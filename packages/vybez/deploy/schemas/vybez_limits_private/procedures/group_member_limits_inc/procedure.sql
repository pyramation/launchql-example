-- Deploy: schemas/vybez_limits_private/procedures/group_member_limits_inc/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_private/schema

BEGIN;

CREATE FUNCTION "vybez_limits_private".group_member_limits_inc (
    limitname citext,
    entity_id uuid,
    actor_id uuid default jwt_public.current_user_id(),
    amount int default 1
)
  RETURNS BOOLEAN
AS $CODEZ$
DECLARE
    limit_exists boolean;
    max_default int = 0;
    rec "vybez_limits_public".group_member_limits;
BEGIN
    SELECT EXISTS (SELECT 1 FROM "vybez_limits_public".group_member_limits l
        WHERE l.name = limitname
        AND l.actor_id = group_member_limits_inc.actor_id
        AND l.entity_id = group_member_limits_inc.entity_id
    ) INTO limit_exists;
    IF (limit_exists IS FALSE) THEN 
        SELECT max FROM "vybez_limits_public".group_member_limit_defaults
            WHERE name = limitname
        INTO max_default;
        IF (NOT FOUND) THEN 
            max_default = 0;
        END IF;
        INSERT INTO "vybez_limits_public".group_member_limits (name, num, max, actor_id, entity_id)
        VALUES (limitname, 0, max_default, actor_id, entity_id);
    END IF;
    SELECT * FROM "vybez_limits_public".group_member_limits l
        WHERE l.name = limitname
        AND l.actor_id = group_member_limits_inc.actor_id
        AND l.entity_id = group_member_limits_inc.entity_id
    INTO rec;
    IF (rec.max < 0 OR rec.max >= rec.num + amount) THEN 
        UPDATE "vybez_limits_public".group_member_limits l
        SET num = num + amount
        WHERE l.name = limitname
        AND l.actor_id = group_member_limits_inc.actor_id
        AND l.entity_id = group_member_limits_inc.entity_id;
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
    RETURN FALSE;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;

-- Deploy: schemas/vybez_memberships_private/trigger_fns/memberships_dtg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

CREATE FUNCTION "vybez_memberships_private".memberships_dtg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (
        SELECT count(*) = 0 FROM "vybez_memberships_public".memberships 
        WHERE is_owner = TRUE
        AND entity_id = OLD.entity_id
        AND actor_id <> OLD.actor_id
    ) THEN 
        IF (
            SELECT count(*) > 0 FROM "vybez_memberships_public".memberships 
            WHERE entity_id = OLD.entity_id
            AND actor_id <> OLD.actor_id
        ) THEN 
            RAISE EXCEPTION 'REQUIRES_ONE_OWNER';
        END IF;
    END IF;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;

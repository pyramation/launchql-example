-- Deploy: schemas/vybez_memberships_private/trigger_fns/create_groups_add_mbrs to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table

BEGIN;

CREATE FUNCTION "vybez_memberships_private".create_groups_add_mbrs ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    gid uuid;
    create_groups_cascade_members boolean;
BEGIN
    SELECT 
        owd.create_groups_cascade_members
    FROM "vybez_memberships_public".membership_defaults owd 
        WHERE owd.entity_id = NEW.entity_id
    INTO create_groups_cascade_members;
    IF (NOT FOUND) THEN 
        create_groups_cascade_members = FALSE;
    END IF;
    FOR gid in
        SELECT g.id FROM 
            "vybez_public".groups g
        WHERE g.owner_id = NEW.entity_id
    LOOP 
        IF (NEW.is_owner IS TRUE) THEN 
       
            INSERT INTO 
                "vybez_memberships_public".group_memberships
                (actor_id, entity_id, is_owner) VALUES 
                (NEW.actor_id, gid, TRUE)
                ON CONFLICT (actor_id, entity_id) DO
                UPDATE SET is_owner = EXCLUDED.is_owner;
        ELSIF (NEW.is_admin IS TRUE) THEN 
            INSERT INTO 
                "vybez_memberships_public".group_memberships
                (actor_id, entity_id, is_admin) VALUES 
                (NEW.actor_id, gid, TRUE)
                ON CONFLICT (actor_id, entity_id) DO
                UPDATE SET is_admin = EXCLUDED.is_admin;
        ELSE 
            IF (create_groups_cascade_members IS TRUE) THEN 
                INSERT INTO 
                    "vybez_memberships_public".group_memberships
                    (actor_id, entity_id, is_owner, is_admin) VALUES 
                    (NEW.actor_id, gid, FALSE, FALSE)
                    ON CONFLICT (actor_id, entity_id)
                    DO UPDATE
                    SET is_admin = EXCLUDED.is_admin, is_owner = EXCLUDED.is_owner;
            ELSE 
                UPDATE "vybez_memberships_public".group_memberships m
                    SET is_admin = FALSE, is_owner = FALSE
                WHERE m.actor_id = NEW.actor_id AND 
                m.entity_id = gid;
            END IF;
        END IF;
    END LOOP;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;

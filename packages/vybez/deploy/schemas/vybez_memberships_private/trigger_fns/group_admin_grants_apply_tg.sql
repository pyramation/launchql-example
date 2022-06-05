-- Deploy: schemas/vybez_memberships_private/trigger_fns/group_admin_grants_apply_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

CREATE FUNCTION "vybez_memberships_private".group_admin_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "vybez_memberships_public".group_memberships 
            SET is_admin = TRUE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "vybez_memberships_public".group_memberships 
            SET is_admin = FALSE
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id
        AND is_owner = FALSE; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;

-- Deploy: schemas/vybez_memberships_private/trigger_fns/group_grants_apply_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

CREATE FUNCTION "vybez_memberships_private".group_grants_apply_tg ()
  RETURNS TRIGGER
AS $CODEZ$
BEGIN
    IF (NEW.is_grant IS TRUE) THEN 
        UPDATE "vybez_memberships_public".group_memberships 
            SET granted = granted | NEW.permissions
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    ELSE 
        UPDATE "vybez_memberships_public".group_memberships 
            SET granted = granted & ~ NEW.permissions
        WHERE actor_id = NEW.actor_id
        AND entity_id = NEW.entity_id; 
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;

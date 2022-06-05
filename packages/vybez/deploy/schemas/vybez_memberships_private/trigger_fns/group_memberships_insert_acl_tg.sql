-- Deploy: schemas/vybez_memberships_private/trigger_fns/group_memberships_insert_acl_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/group_memberships_acl/table

BEGIN;

CREATE FUNCTION "vybez_memberships_private".group_memberships_insert_acl_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    IF (NEW.is_owner IS TRUE) THEN 
      NEW.is_admin = TRUE;
      NEW.is_approved = TRUE;
      NEW.is_disabled = FALSE;
      NEW.is_banned = FALSE;
    END IF;
    SELECT (
        NEW.is_approved IS TRUE
    AND
        NEW.is_disabled IS FALSE
    AND
        NEW.is_banned IS FALSE 
    ) INTO NEW.is_active;
    IF (NEW.is_active IS TRUE) THEN 
        INSERT INTO "vybez_memberships_private".group_memberships_acl 
            (is_owner, is_admin, permissions, actor_id, entity_id)
        VALUES 
            (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id, NEW.entity_id)
        ;
        INSERT INTO "vybez_memberships_public".group_members 
            (is_admin, actor_id, entity_id)
        VALUES 
            (NEW.is_admin, NEW.actor_id, NEW.entity_id)
        ;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;

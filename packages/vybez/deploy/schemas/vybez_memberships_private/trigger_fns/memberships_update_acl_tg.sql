-- Deploy: schemas/vybez_memberships_private/trigger_fns/memberships_update_acl_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table

BEGIN;

CREATE FUNCTION "vybez_memberships_private".memberships_update_acl_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
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
    IF ( NEW.is_active IS FALSE ) THEN 
        DELETE FROM "vybez_memberships_private".memberships_acl 
            WHERE actor_id = NEW.actor_id
                AND entity_id = NEW.entity_id;
        DELETE FROM "vybez_memberships_public".members 
            WHERE actor_id = NEW.actor_id
                AND entity_id = NEW.entity_id;
    ELSE 
        INSERT INTO "vybez_memberships_private".memberships_acl 
            (is_owner, is_admin, permissions, actor_id, entity_id)
        VALUES 
            (NEW.is_owner, NEW.is_admin, NEW.permissions, NEW.actor_id, NEW.entity_id)
        ON CONFLICT (actor_id, entity_id)
        DO UPDATE
          SET
            is_owner = EXCLUDED.is_owner,
            is_admin = EXCLUDED.is_admin,
            permissions = EXCLUDED.permissions
        ;
        INSERT INTO "vybez_memberships_public".members 
            (is_admin, actor_id, entity_id)
        VALUES 
            (NEW.is_admin, NEW.actor_id, NEW.entity_id)
        ON CONFLICT (actor_id, entity_id)
        DO NOTHING;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;

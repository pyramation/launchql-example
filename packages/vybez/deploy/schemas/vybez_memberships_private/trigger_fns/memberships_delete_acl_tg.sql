-- Deploy: schemas/vybez_memberships_private/trigger_fns/memberships_delete_acl_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table

BEGIN;

CREATE FUNCTION "vybez_memberships_private".memberships_delete_acl_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_num_updated int;
BEGIN
  
    DELETE FROM "vybez_memberships_private".memberships_acl 
    WHERE actor_id = OLD.actor_id
        AND entity_id = OLD.entity_id;
    DELETE FROM "vybez_memberships_public".members 
    WHERE actor_id = OLD.actor_id
        AND entity_id = OLD.entity_id;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;

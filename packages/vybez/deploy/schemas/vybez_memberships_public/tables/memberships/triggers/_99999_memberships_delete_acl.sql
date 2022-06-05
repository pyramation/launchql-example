-- Deploy: schemas/vybez_memberships_public/tables/memberships/triggers/_99999_memberships_delete_acl to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_private/trigger_fns/memberships_delete_acl_tg

BEGIN;
CREATE TRIGGER _99999_memberships_delete_acl 
 AFTER DELETE ON "vybez_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".memberships_delete_acl_tg ( );
COMMIT;

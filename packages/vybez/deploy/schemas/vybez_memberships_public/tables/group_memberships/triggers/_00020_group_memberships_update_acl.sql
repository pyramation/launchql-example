-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/triggers/_00020_group_memberships_update_acl to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_private/trigger_fns/group_memberships_update_acl_tg

BEGIN;
CREATE TRIGGER _00020_group_memberships_update_acl 
 AFTER UPDATE ON "vybez_memberships_public".group_memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".group_memberships_update_acl_tg ( );
COMMIT;

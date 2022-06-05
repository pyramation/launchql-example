-- Deploy: schemas/vybez_memberships_public/tables/memberships/triggers/_99999_groups_mbr_dtrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_private/trigger_fns/delete_groups_remove_mbrs

BEGIN;
CREATE TRIGGER _99999_groups_mbr_dtrg 
 BEFORE DELETE ON "vybez_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".delete_groups_remove_mbrs ( );
COMMIT;

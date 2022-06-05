-- Deploy: schemas/vybez_memberships_public/tables/memberships/triggers/_99999_groups_mbr_itrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_private/trigger_fns/create_groups_add_mbrs

BEGIN;
CREATE TRIGGER _99999_groups_mbr_itrg 
 BEFORE INSERT ON "vybez_memberships_public".memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".create_groups_add_mbrs ( );
COMMIT;

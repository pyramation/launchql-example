-- Deploy: schemas/vybez_public/tables/users/triggers/membership_mbr_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/trigger_fns/membership_mbr_create

BEGIN;
CREATE TRIGGER membership_mbr_trg 
 AFTER INSERT ON "vybez_public".users 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".membership_mbr_create ( );
COMMIT;

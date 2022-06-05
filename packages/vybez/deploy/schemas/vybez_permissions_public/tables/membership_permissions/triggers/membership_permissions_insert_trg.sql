-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/triggers/membership_permissions_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_private/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table
-- requires: schemas/vybez_permissions_private/trigger_fns/membership_permissions_bitnum_tg

BEGIN;
CREATE TRIGGER membership_permissions_insert_trg 
 BEFORE INSERT ON "vybez_permissions_public".membership_permissions 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_permissions_private".membership_permissions_bitnum_tg ( );
COMMIT;

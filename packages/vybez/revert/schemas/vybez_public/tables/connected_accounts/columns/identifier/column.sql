-- Revert: schemas/vybez_public/tables/connected_accounts/columns/identifier/column from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts DROP COLUMN identifier;
COMMIT;  


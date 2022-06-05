-- Revert: schemas/vybez_public/tables/connected_accounts/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts DROP COLUMN owner_id;
COMMIT;  


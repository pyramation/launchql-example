-- Revert: schemas/vybez_public/tables/connected_accounts/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts DROP COLUMN is_verified;
COMMIT;  


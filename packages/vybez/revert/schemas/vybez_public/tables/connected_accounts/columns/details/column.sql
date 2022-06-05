-- Revert: schemas/vybez_public/tables/connected_accounts/columns/details/column from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts DROP COLUMN details;
COMMIT;  


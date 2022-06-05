-- Revert: schemas/vybez_public/tables/connected_accounts/table from pg

BEGIN;
DROP TABLE "vybez_public".connected_accounts;
COMMIT;  


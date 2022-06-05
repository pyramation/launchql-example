-- Revert: schemas/vybez_public/tables/connected_accounts/columns/details/alterations/alt0000000427 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".connected_accounts.details IS NULL;
COMMIT;  


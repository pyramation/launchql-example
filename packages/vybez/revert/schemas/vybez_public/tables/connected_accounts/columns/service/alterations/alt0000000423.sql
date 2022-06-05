-- Revert: schemas/vybez_public/tables/connected_accounts/columns/service/alterations/alt0000000423 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".connected_accounts.service IS NULL;
COMMIT;  


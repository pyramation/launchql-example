-- Revert: schemas/vybez_public/tables/connected_accounts/columns/identifier/alterations/alt0000000425 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".connected_accounts.identifier IS NULL;
COMMIT;  


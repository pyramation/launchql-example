-- Revert: schemas/vybez_public/tables/connected_accounts/columns/id/alterations/alt0000000419 from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_public/tables/connected_accounts/columns/identifier/alterations/alt0000000424 from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN identifier DROP NOT NULL;


COMMIT;  


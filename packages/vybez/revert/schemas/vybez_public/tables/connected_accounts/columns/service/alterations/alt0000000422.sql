-- Revert: schemas/vybez_public/tables/connected_accounts/columns/service/alterations/alt0000000422 from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN service DROP NOT NULL;


COMMIT;  


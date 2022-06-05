-- Revert: schemas/vybez_public/tables/connected_accounts/columns/details/alterations/alt0000000426 from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN details DROP NOT NULL;


COMMIT;  


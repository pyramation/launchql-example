-- Revert: schemas/vybez_public/tables/connected_accounts/columns/is_verified/alterations/alt0000000428 from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  


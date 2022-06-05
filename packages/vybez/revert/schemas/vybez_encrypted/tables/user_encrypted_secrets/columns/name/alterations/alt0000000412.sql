-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/name/alterations/alt0000000412 from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  


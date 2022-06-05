-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/id/alterations/alt0000000409 from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  


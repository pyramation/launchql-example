-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/owner_id/alterations/alt0000000411 from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  


-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/constraints/user_encrypted_secrets_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    DROP CONSTRAINT user_encrypted_secrets_pkey;

COMMIT;  


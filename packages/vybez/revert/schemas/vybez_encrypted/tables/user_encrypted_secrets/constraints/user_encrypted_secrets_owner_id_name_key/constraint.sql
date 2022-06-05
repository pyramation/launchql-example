-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/constraints/user_encrypted_secrets_owner_id_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets 
    DROP CONSTRAINT user_encrypted_secrets_owner_id_name_key;

COMMIT;  


-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/triggers/user_encrypted_secrets_insert_tg from pg

BEGIN;


DROP TRIGGER user_encrypted_secrets_insert_tg
    ON "vybez_encrypted".user_encrypted_secrets;
COMMIT;  


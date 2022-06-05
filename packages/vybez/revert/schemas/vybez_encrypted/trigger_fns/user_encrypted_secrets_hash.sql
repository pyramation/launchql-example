-- Revert: schemas/vybez_encrypted/trigger_fns/user_encrypted_secrets_hash from pg

BEGIN;


DROP FUNCTION "vybez_encrypted".user_encrypted_secrets_hash;
COMMIT;  


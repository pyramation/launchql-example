-- Deploy: schemas/vybez_encrypted/tables/user_encrypted_secrets/triggers/user_encrypted_secrets_update_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema
-- requires: schemas/vybez_encrypted/tables/user_encrypted_secrets/table
-- requires: schemas/vybez_encrypted/trigger_fns/user_encrypted_secrets_hash

BEGIN;

CREATE TRIGGER user_encrypted_secrets_update_tg
BEFORE UPDATE ON "vybez_encrypted".user_encrypted_secrets
FOR EACH ROW
  WHEN (
    NEW.value IS DISTINCT FROM OLD.value
  )
EXECUTE PROCEDURE "vybez_encrypted".user_encrypted_secrets_hash ();
COMMIT;

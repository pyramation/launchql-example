-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/table from pg

BEGIN;
DROP TABLE "vybez_encrypted".user_encrypted_secrets;
COMMIT;  


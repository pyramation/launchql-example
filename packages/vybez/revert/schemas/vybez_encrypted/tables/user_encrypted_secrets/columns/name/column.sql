-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets DROP COLUMN name;
COMMIT;  


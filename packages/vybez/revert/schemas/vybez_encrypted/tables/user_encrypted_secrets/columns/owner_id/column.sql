-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "vybez_encrypted".user_encrypted_secrets DROP COLUMN owner_id;
COMMIT;  


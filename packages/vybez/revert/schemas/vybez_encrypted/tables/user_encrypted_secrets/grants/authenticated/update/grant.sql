-- Revert: schemas/vybez_encrypted/tables/user_encrypted_secrets/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_encrypted".user_encrypted_secrets FROM authenticated;
COMMIT;  


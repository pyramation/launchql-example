-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_simple_secrets".user_secrets FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_simple_secrets".user_secrets FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_simple_secrets".user_secrets FROM authenticated;
COMMIT;  


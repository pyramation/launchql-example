-- Revert: schemas/vybez_public/tables/user_profiles/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".user_profiles FROM authenticated;
COMMIT;  


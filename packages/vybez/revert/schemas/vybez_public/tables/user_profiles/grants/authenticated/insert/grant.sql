-- Revert: schemas/vybez_public/tables/user_profiles/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_public".user_profiles FROM authenticated;
COMMIT;  


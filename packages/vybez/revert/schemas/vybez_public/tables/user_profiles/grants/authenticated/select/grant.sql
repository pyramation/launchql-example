-- Revert: schemas/vybez_public/tables/user_profiles/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".user_profiles FROM authenticated;
COMMIT;  


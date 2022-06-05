-- Revert: schemas/vybez_public/tables/user_profiles/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".user_profiles FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_public/tables/user_profiles/constraints/user_profiles_user_id_fkey/alterations/alt0000000569 from pg

BEGIN;
COMMENT ON CONSTRAINT user_profiles_user_id_fkey ON "vybez_public".user_profiles IS NULL;
COMMIT;  


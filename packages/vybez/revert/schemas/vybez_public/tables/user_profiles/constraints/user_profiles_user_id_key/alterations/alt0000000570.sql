-- Revert: schemas/vybez_public/tables/user_profiles/constraints/user_profiles_user_id_key/alterations/alt0000000570 from pg

BEGIN;
COMMENT ON CONSTRAINT user_profiles_user_id_key ON "vybez_public".user_profiles IS NULL;
COMMIT;  


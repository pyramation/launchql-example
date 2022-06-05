-- Revert: schemas/vybez_public/tables/user_profiles/indexes/user_profiles_user_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".user_profiles_user_id_idx;
COMMIT;  


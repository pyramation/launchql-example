-- Verify: schemas/vybez_public/tables/user_profiles/indexes/user_profiles_user_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.user_profiles', 'user_profiles_user_id_idx');
COMMIT;  


-- Verify: schemas/vybez_public/tables/user_profiles/table on pg

BEGIN;
SELECT verify_table('vybez_public.user_profiles');
COMMIT;  


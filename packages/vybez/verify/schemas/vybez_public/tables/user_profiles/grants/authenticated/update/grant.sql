-- Verify: schemas/vybez_public/tables/user_profiles/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.user_profiles', 'update', 'authenticated');
COMMIT;  


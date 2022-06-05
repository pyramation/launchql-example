-- Verify: schemas/vybez_public/tables/user_profiles/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.user_profiles', 'insert', 'authenticated');
COMMIT;  


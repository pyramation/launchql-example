-- Verify: schemas/vybez_public/tables/user_settings/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.user_settings', 'insert', 'authenticated');
COMMIT;  


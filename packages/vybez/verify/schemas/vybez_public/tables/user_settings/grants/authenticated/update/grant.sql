-- Verify: schemas/vybez_public/tables/user_settings/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.user_settings', 'update', 'authenticated');
COMMIT;  


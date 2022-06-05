-- Verify: schemas/vybez_public/tables/user_settings/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.user_settings', 'select', 'authenticated');
COMMIT;  


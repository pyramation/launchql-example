-- Verify: schemas/vybez_public/tables/user_settings/table on pg

BEGIN;
SELECT verify_table('vybez_public.user_settings');
COMMIT;  


-- Verify: schemas/vybez_limits_public/tables/app_limits/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.app_limits', 'update', 'authenticated');
COMMIT;  


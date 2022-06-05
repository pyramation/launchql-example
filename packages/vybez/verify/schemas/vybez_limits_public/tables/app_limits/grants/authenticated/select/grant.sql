-- Verify: schemas/vybez_limits_public/tables/app_limits/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.app_limits', 'select', 'authenticated');
COMMIT;  


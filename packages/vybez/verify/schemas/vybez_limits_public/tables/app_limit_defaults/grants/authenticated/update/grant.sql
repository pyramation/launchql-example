-- Verify: schemas/vybez_limits_public/tables/app_limit_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_limits_public.app_limit_defaults', 'update', 'authenticated');
COMMIT;  


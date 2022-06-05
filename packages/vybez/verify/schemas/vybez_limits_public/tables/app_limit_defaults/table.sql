-- Verify: schemas/vybez_limits_public/tables/app_limit_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_limits_public.app_limit_defaults');
COMMIT;  


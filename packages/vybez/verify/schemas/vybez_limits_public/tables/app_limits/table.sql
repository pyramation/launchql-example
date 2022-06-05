-- Verify: schemas/vybez_limits_public/tables/app_limits/table on pg

BEGIN;
SELECT verify_table('vybez_limits_public.app_limits');
COMMIT;  


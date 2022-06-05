-- Verify: schemas/vybez_status_public/tables/app_steps/table on pg

BEGIN;
SELECT verify_table('vybez_status_public.app_steps');
COMMIT;  


-- Verify: schemas/vybez_status_public/tables/app_steps/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_status_public.app_steps', 'update', 'authenticated');
COMMIT;  


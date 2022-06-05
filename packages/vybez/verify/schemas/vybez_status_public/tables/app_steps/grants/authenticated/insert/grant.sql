-- Verify: schemas/vybez_status_public/tables/app_steps/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_status_public.app_steps', 'insert', 'authenticated');
COMMIT;  


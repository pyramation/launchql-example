-- Verify: schemas/vybez_status_public/tables/app_achievements/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_status_public.app_achievements', 'update', 'authenticated');
COMMIT;  


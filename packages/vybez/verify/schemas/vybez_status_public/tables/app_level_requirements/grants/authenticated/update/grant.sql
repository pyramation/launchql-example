-- Verify: schemas/vybez_status_public/tables/app_level_requirements/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_status_public.app_level_requirements', 'update', 'authenticated');
COMMIT;  


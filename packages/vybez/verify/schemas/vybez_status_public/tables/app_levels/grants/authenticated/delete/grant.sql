-- Verify: schemas/vybez_status_public/tables/app_levels/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_status_public.app_levels', 'delete', 'authenticated');
COMMIT;  


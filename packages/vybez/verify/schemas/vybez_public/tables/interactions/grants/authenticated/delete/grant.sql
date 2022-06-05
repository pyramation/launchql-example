-- Verify: schemas/vybez_public/tables/interactions/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interactions', 'delete', 'authenticated');
COMMIT;  


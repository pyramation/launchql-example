-- Verify: schemas/vybez_public/tables/interactions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interactions', 'update', 'authenticated');
COMMIT;  


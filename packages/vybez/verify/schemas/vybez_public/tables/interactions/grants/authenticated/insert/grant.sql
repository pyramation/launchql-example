-- Verify: schemas/vybez_public/tables/interactions/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interactions', 'insert', 'authenticated');
COMMIT;  


-- Verify: schemas/vybez_public/tables/interactions/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interactions', 'select', 'authenticated');
COMMIT;  


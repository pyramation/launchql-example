-- Verify: schemas/vybez_public/tables/interaction_types/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interaction_types', 'insert', 'authenticated');
COMMIT;  


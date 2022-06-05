-- Verify: schemas/vybez_public/tables/interaction_types/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interaction_types', 'update', 'authenticated');
COMMIT;  


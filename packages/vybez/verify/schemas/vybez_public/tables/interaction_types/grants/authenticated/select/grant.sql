-- Verify: schemas/vybez_public/tables/interaction_types/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.interaction_types', 'select', 'authenticated');
COMMIT;  


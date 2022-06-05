-- Verify: schemas/vybez_public/tables/interaction_types/table on pg

BEGIN;
SELECT verify_table('vybez_public.interaction_types');
COMMIT;  


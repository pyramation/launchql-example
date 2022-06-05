-- Verify: schemas/vybez_public/tables/interaction_types/indexes/interaction_types_ref_num_idx on pg

BEGIN;
SELECT verify_index('vybez_public.interaction_types', 'interaction_types_ref_num_idx');
COMMIT;  


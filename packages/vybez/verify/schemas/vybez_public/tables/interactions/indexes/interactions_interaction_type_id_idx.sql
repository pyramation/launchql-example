-- Verify: schemas/vybez_public/tables/interactions/indexes/interactions_interaction_type_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.interactions', 'interactions_interaction_type_id_idx');
COMMIT;  


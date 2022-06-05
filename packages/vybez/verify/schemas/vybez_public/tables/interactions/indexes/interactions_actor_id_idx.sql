-- Verify: schemas/vybez_public/tables/interactions/indexes/interactions_actor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.interactions', 'interactions_actor_id_idx');
COMMIT;  


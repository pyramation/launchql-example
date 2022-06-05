-- Verify: schemas/vybez_public/tables/interactions/indexes/interactions_publication_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.interactions', 'interactions_publication_id_idx');
COMMIT;  


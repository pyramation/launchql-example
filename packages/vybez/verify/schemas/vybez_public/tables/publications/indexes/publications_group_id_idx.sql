-- Verify: schemas/vybez_public/tables/publications/indexes/publications_group_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.publications', 'publications_group_id_idx');
COMMIT;  


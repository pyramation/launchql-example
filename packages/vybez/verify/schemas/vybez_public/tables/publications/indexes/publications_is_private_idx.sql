-- Verify: schemas/vybez_public/tables/publications/indexes/publications_is_private_idx on pg

BEGIN;
SELECT verify_index('vybez_public.publications', 'publications_is_private_idx');
COMMIT;  


-- Verify: schemas/vybez_public/tables/publications/indexes/publications_location_idx on pg

BEGIN;
SELECT verify_index('vybez_public.publications', 'publications_location_idx');
COMMIT;  


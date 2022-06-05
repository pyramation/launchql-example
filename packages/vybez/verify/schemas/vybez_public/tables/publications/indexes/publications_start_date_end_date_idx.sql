-- Verify: schemas/vybez_public/tables/publications/indexes/publications_start_date_end_date_idx on pg

BEGIN;
SELECT verify_index('vybez_public.publications', 'publications_start_date_end_date_idx');
COMMIT;  


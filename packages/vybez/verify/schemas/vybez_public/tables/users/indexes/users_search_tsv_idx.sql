-- Verify: schemas/vybez_public/tables/users/indexes/users_search_tsv_idx on pg

BEGIN;
SELECT verify_index('vybez_public.users', 'users_search_tsv_idx');
COMMIT;  


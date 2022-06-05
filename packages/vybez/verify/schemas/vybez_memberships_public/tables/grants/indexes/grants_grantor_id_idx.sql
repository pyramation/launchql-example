-- Verify: schemas/vybez_memberships_public/tables/grants/indexes/grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.grants', 'grants_grantor_id_idx');
COMMIT;  


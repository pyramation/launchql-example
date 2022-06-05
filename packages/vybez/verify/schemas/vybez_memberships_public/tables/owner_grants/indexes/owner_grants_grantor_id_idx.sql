-- Verify: schemas/vybez_memberships_public/tables/owner_grants/indexes/owner_grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.owner_grants', 'owner_grants_grantor_id_idx');
COMMIT;  


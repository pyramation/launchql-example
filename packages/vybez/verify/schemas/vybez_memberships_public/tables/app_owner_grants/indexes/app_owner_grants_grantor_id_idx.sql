-- Verify: schemas/vybez_memberships_public/tables/app_owner_grants/indexes/app_owner_grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.app_owner_grants', 'app_owner_grants_grantor_id_idx');
COMMIT;  


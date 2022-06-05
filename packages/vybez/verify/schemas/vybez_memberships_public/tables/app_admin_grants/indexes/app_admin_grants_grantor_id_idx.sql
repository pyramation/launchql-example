-- Verify: schemas/vybez_memberships_public/tables/app_admin_grants/indexes/app_admin_grants_grantor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.app_admin_grants', 'app_admin_grants_grantor_id_idx');
COMMIT;  


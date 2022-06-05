-- Verify: schemas/vybez_memberships_public/tables/admin_grants/indexes/admin_grants_entity_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.admin_grants', 'admin_grants_entity_id_idx');
COMMIT;  


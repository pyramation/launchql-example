-- Verify: schemas/vybez_memberships_public/tables/group_admin_grants/indexes/group_admin_grants_entity_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.group_admin_grants', 'group_admin_grants_entity_id_idx');
COMMIT;  


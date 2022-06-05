-- Verify: schemas/vybez_memberships_public/tables/group_owner_grants/indexes/group_owner_grants_entity_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.group_owner_grants', 'group_owner_grants_entity_id_idx');
COMMIT;  


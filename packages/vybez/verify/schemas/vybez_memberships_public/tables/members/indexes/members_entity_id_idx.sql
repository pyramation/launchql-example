-- Verify: schemas/vybez_memberships_public/tables/members/indexes/members_entity_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.members', 'members_entity_id_idx');
COMMIT;  


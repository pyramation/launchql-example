-- Verify: schemas/vybez_memberships_public/tables/members/indexes/members_actor_id_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.members', 'members_actor_id_idx');
COMMIT;  


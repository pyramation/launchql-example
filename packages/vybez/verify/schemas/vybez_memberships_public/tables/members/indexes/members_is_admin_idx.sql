-- Verify: schemas/vybez_memberships_public/tables/members/indexes/members_is_admin_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.members', 'members_is_admin_idx');
COMMIT;  


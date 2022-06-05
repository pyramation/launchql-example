-- Verify: schemas/vybez_memberships_public/tables/memberships/indexes/memberships_is_admin_idx on pg

BEGIN;
SELECT verify_index('vybez_memberships_public.memberships', 'memberships_is_admin_idx');
COMMIT;  


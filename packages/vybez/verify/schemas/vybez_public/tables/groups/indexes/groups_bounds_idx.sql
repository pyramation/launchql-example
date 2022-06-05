-- Verify: schemas/vybez_public/tables/groups/indexes/groups_bounds_idx on pg

BEGIN;
SELECT verify_index('vybez_public.groups', 'groups_bounds_idx');
COMMIT;  


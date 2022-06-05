-- Verify: schemas/vybez_public/tables/groups/indexes/groups_owner_id_idx on pg

BEGIN;
SELECT verify_index('vybez_public.groups', 'groups_owner_id_idx');
COMMIT;  


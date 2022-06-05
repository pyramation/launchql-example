-- Verify: schemas/vybez_memberships_public/tables/group_owner_grants/triggers/group_owner_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.group_owner_grants_insert_trg');
COMMIT;  


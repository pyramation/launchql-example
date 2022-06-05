-- Verify: schemas/vybez_memberships_public/tables/group_admin_grants/triggers/group_admin_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.group_admin_grants_insert_trg');
COMMIT;  


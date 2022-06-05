-- Verify: schemas/vybez_permissions_public/tables/group_member_permissions/triggers/group_member_permissions_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_permissions_public.group_member_permissions_insert_trg');
COMMIT;  


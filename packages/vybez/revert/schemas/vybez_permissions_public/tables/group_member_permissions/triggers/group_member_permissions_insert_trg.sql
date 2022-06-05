-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/triggers/group_member_permissions_insert_trg from pg

BEGIN;
DROP TRIGGER group_member_permissions_insert_trg ON "vybez_permissions_public".group_member_permissions;
COMMIT;  


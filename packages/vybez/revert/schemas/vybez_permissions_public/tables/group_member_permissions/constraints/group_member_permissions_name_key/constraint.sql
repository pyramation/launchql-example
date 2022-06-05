-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/constraints/group_member_permissions_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permissions 
    DROP CONSTRAINT group_member_permissions_name_key;

COMMIT;  


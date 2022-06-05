-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/constraints/group_member_permission_defaults_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permission_defaults 
    DROP CONSTRAINT group_member_permission_defaults_entity_id_fkey;

COMMIT;  


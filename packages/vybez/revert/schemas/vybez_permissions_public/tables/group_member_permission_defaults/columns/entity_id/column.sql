-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permission_defaults DROP COLUMN entity_id;
COMMIT;  


-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".group_memberships_acl DROP COLUMN entity_id;
COMMIT;  


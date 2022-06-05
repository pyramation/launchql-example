-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl DROP COLUMN entity_id;
COMMIT;  


-- Revert: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".group_memberships_acl DROP COLUMN actor_id;
COMMIT;  


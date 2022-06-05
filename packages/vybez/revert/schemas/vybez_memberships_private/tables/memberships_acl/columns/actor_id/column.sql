-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl DROP COLUMN actor_id;
COMMIT;  


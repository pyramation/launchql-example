-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants DROP COLUMN actor_id;
COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_admin_grants DROP COLUMN actor_id;
COMMIT;  


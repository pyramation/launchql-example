-- Revert: schemas/vybez_memberships_public/tables/admin_grants/columns/actor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants DROP COLUMN actor_id;
COMMIT;  


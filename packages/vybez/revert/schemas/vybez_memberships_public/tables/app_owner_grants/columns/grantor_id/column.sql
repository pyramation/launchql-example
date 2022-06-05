-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/columns/grantor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_owner_grants DROP COLUMN grantor_id;
COMMIT;  


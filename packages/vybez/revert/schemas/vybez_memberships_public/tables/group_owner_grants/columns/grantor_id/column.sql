-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/grantor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants DROP COLUMN grantor_id;
COMMIT;  


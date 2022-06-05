-- Revert: schemas/vybez_memberships_public/tables/grants/columns/grantor_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants DROP COLUMN grantor_id;
COMMIT;  


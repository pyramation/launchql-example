-- Revert: schemas/vybez_memberships_public/tables/membership_types/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_types DROP COLUMN name;
COMMIT;  


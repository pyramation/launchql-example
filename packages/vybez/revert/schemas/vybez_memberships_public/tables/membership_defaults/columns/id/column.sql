-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults DROP COLUMN id;
COMMIT;  


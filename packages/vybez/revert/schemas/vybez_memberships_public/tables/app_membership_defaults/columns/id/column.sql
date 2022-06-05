-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_membership_defaults DROP COLUMN id;
COMMIT;  


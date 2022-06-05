-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/is_verified/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_membership_defaults DROP COLUMN is_verified;
COMMIT;  


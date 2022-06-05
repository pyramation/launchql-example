-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/is_approved/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults DROP COLUMN is_approved;
COMMIT;  


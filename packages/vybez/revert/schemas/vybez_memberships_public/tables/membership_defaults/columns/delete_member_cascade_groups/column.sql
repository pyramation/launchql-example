-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/delete_member_cascade_groups/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults DROP COLUMN delete_member_cascade_groups;
COMMIT;  


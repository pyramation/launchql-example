-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000215 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults 
    ALTER COLUMN delete_member_cascade_groups DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000000085 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_membership_defaults 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/alterations/alt0000000216 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults 
    ALTER COLUMN create_groups_cascade_members DROP NOT NULL;


COMMIT;  


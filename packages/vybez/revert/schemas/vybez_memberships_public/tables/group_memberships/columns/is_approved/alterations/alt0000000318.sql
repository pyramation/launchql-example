-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_approved/alterations/alt0000000318 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/is_grant/alterations/alt0000000354 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/columns/is_grant/alterations/alt0000000119 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_owner_grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  


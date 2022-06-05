-- Revert: schemas/vybez_memberships_public/tables/app_grants/columns/is_grant/alterations/alt0000000128 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/app_grants/columns/id/alterations/alt0000000124 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


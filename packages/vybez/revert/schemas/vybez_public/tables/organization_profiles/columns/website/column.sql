-- Revert: schemas/vybez_public/tables/organization_profiles/columns/website/column from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles DROP COLUMN website;
COMMIT;  


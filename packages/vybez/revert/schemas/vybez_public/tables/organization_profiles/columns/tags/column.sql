-- Revert: schemas/vybez_public/tables/organization_profiles/columns/tags/column from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles DROP COLUMN tags;
COMMIT;  


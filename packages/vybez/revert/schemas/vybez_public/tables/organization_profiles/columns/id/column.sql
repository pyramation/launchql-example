-- Revert: schemas/vybez_public/tables/organization_profiles/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles DROP COLUMN id;
COMMIT;  


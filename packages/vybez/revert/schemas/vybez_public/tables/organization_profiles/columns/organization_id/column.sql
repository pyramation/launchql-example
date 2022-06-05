-- Revert: schemas/vybez_public/tables/organization_profiles/columns/organization_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles DROP COLUMN organization_id;
COMMIT;  


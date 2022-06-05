-- Revert: schemas/vybez_public/tables/organization_profiles/columns/id/alterations/alt0000000588 from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


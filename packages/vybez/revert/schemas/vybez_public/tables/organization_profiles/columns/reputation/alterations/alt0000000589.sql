-- Revert: schemas/vybez_public/tables/organization_profiles/columns/reputation/alterations/alt0000000589 from pg

BEGIN;


ALTER TABLE "vybez_public".organization_profiles 
    ALTER COLUMN reputation DROP DEFAULT;

COMMIT;  


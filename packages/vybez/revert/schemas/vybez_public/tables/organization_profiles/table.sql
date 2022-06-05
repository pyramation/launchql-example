-- Revert: schemas/vybez_public/tables/organization_profiles/table from pg

BEGIN;
DROP TABLE "vybez_public".organization_profiles;
COMMIT;  


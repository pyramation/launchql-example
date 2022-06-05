-- Revert: schemas/vybez_public/tables/organization_profiles/indexes/organization_profiles_organization_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".organization_profiles_organization_id_idx;
COMMIT;  


-- Revert: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/alterations/alt0000000592 from pg

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_key ON "vybez_public".organization_profiles IS NULL;
COMMIT;  


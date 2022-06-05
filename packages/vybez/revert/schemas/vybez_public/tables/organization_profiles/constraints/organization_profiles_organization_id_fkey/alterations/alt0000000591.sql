-- Revert: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/alterations/alt0000000591 from pg

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_fkey ON "vybez_public".organization_profiles IS NULL;
COMMIT;  


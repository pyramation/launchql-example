-- Deploy: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/alterations/alt0000000592 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_organization_id_key/constraint

BEGIN;
COMMENT ON CONSTRAINT organization_profiles_organization_id_key ON "vybez_public".organization_profiles IS E'@omit';
COMMIT;

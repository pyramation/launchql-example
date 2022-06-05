-- Deploy: schemas/vybez_public/tables/organization_profiles/indexes/organization_profiles_organization_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table
-- requires: schemas/vybez_public/tables/organization_profiles/columns/organization_id/column

BEGIN;
CREATE INDEX organization_profiles_organization_id_idx ON "vybez_public".organization_profiles (organization_id);
COMMIT;

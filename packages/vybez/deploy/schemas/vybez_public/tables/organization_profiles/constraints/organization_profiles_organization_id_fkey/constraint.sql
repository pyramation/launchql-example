-- Deploy: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_organization_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_public/tables/organization_profiles/table
-- requires: schemas/vybez_public/tables/organization_profiles/columns/organization_id/column

BEGIN;

ALTER TABLE "vybez_public".organization_profiles 
    ADD CONSTRAINT organization_profiles_organization_id_fkey 
    FOREIGN KEY (organization_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;

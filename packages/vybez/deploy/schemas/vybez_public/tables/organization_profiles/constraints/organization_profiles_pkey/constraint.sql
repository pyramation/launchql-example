-- Deploy: schemas/vybez_public/tables/organization_profiles/constraints/organization_profiles_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table

BEGIN;

ALTER TABLE "vybez_public".organization_profiles
    ADD CONSTRAINT organization_profiles_pkey PRIMARY KEY (id);
COMMIT;

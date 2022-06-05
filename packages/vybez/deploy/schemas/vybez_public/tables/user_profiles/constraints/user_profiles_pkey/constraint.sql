-- Deploy: schemas/vybez_public/tables/user_profiles/constraints/user_profiles_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;

ALTER TABLE "vybez_public".user_profiles
    ADD CONSTRAINT user_profiles_pkey PRIMARY KEY (id);
COMMIT;

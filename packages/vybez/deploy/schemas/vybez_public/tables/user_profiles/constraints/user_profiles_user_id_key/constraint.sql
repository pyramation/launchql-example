-- Deploy: schemas/vybez_public/tables/user_profiles/constraints/user_profiles_user_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;

ALTER TABLE "vybez_public".user_profiles
    ADD CONSTRAINT user_profiles_user_id_key UNIQUE (user_id);
COMMIT;

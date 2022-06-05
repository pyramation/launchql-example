-- Deploy: schemas/vybez_public/tables/user_profiles/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;
GRANT DELETE ON TABLE "vybez_public".user_profiles TO authenticated;
COMMIT;

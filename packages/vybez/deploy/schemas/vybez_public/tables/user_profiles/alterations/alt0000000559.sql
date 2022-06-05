-- Deploy: schemas/vybez_public/tables/user_profiles/alterations/alt0000000559 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;

ALTER TABLE "vybez_public".user_profiles
    DISABLE ROW LEVEL SECURITY;
COMMIT;

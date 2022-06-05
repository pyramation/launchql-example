-- Deploy: schemas/vybez_public/tables/users/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;
GRANT INSERT ( type, display_name, profile_picture ) ON TABLE "vybez_public".users TO authenticated;
COMMIT;

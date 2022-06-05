-- Deploy: schemas/vybez_public/tables/users/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;
GRANT UPDATE ( display_name, profile_picture ) ON TABLE "vybez_public".users TO authenticated;
COMMIT;

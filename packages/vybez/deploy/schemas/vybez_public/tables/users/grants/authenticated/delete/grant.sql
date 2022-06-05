-- Deploy: schemas/vybez_public/tables/users/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;
GRANT DELETE ON TABLE "vybez_public".users TO authenticated;
COMMIT;

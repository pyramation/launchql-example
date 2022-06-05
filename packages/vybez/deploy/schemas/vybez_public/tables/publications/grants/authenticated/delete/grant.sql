-- Deploy: schemas/vybez_public/tables/publications/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;
GRANT DELETE ON TABLE "vybez_public".publications TO authenticated;
COMMIT;

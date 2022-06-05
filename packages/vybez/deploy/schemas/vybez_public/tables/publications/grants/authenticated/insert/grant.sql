-- Deploy: schemas/vybez_public/tables/publications/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;
GRANT INSERT ON TABLE "vybez_public".publications TO authenticated;
COMMIT;

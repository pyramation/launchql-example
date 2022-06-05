-- Deploy: schemas/vybez_public/tables/interactions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
GRANT INSERT ON TABLE "vybez_public".interactions TO authenticated;
COMMIT;

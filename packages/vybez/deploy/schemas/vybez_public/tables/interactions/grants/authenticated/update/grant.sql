-- Deploy: schemas/vybez_public/tables/interactions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_public".interactions TO authenticated;
COMMIT;

-- Deploy: schemas/vybez_public/tables/groups/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;
GRANT DELETE ON TABLE "vybez_public".groups TO authenticated;
COMMIT;

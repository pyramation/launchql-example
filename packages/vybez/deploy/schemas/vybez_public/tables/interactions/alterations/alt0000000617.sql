-- Deploy: schemas/vybez_public/tables/interactions/alterations/alt0000000617 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions
    DISABLE ROW LEVEL SECURITY;
COMMIT;

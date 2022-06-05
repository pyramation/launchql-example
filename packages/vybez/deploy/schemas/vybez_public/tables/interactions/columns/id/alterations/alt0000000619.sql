-- Deploy: schemas/vybez_public/tables/interactions/columns/id/alterations/alt0000000619 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;

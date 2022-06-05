-- Deploy: schemas/vybez_public/tables/interactions/columns/publication_id/alterations/alt0000000630 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/publication_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN publication_id SET DEFAULT uuid_nil();
COMMIT;

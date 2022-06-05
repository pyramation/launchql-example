-- Deploy: schemas/vybez_public/tables/publications/columns/id/alterations/alt0000000594 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN id SET NOT NULL;
COMMIT;

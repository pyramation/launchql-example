-- Deploy: schemas/vybez_public/tables/publications/columns/is_published/alterations/alt0000000599 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/is_published/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_published SET NOT NULL;
COMMIT;

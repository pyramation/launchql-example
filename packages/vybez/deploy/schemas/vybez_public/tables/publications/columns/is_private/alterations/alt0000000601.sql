-- Deploy: schemas/vybez_public/tables/publications/columns/is_private/alterations/alt0000000601 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/is_private/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_private SET NOT NULL;
COMMIT;

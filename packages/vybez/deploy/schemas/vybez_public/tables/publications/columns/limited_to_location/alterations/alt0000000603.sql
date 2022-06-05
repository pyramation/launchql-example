-- Deploy: schemas/vybez_public/tables/publications/columns/limited_to_location/alterations/alt0000000603 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/limited_to_location/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN limited_to_location SET DEFAULT false;
COMMIT;

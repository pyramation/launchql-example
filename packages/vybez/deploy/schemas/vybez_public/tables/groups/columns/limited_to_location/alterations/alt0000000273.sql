-- Deploy: schemas/vybez_public/tables/groups/columns/limited_to_location/alterations/alt0000000273 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/groups/columns/limited_to_location/column

BEGIN;

ALTER TABLE "vybez_public".groups 
    ALTER COLUMN limited_to_location SET NOT NULL;
COMMIT;

-- Deploy: schemas/vybez_public/tables/groups/columns/id/alterations/alt0000000271 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/groups/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".groups 
    ALTER COLUMN id SET NOT NULL;
COMMIT;

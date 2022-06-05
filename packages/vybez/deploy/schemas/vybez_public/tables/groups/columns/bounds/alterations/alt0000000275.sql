-- Deploy: schemas/vybez_public/tables/groups/columns/bounds/alterations/alt0000000275 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/columns/bounds/column

BEGIN;
COMMENT ON COLUMN "vybez_public".groups.bounds IS E'all locations combined using ST_Collect for search optimization';
COMMIT;

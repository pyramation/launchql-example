-- Deploy: schemas/vybez_public/tables/publications/columns/bounds/alterations/alt0000000604 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/columns/bounds/column

BEGIN;
COMMENT ON COLUMN "vybez_public".publications.bounds IS E'all locations combined using ST_Collect for search optimization';
COMMIT;

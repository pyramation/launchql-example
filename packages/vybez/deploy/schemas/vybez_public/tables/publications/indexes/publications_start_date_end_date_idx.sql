-- Deploy: schemas/vybez_public/tables/publications/indexes/publications_start_date_end_date_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/end_date/column
-- requires: schemas/vybez_public/tables/publications/columns/start_date/column

BEGIN;
CREATE INDEX publications_start_date_end_date_idx ON "vybez_public".publications (start_date, end_date);
COMMIT;

-- Deploy: schemas/vybez_public/tables/publications/alterations/alt0000000593 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications
    DISABLE ROW LEVEL SECURITY;
COMMIT;

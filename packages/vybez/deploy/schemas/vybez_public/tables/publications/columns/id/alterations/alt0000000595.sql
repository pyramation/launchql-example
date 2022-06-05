-- Deploy: schemas/vybez_public/tables/publications/columns/id/alterations/alt0000000595 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;

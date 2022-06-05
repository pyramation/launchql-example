-- Deploy: schemas/vybez_public/tables/publications/columns/owner_id/alterations/alt0000000607 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;

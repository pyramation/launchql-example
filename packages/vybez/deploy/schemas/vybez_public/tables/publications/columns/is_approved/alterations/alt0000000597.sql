-- Deploy: schemas/vybez_public/tables/publications/columns/is_approved/alterations/alt0000000597 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/is_approved/column

BEGIN;

ALTER TABLE "vybez_public".publications 
    ALTER COLUMN is_approved SET NOT NULL;
COMMIT;

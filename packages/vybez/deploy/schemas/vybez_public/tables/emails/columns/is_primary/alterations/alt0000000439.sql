-- Deploy: schemas/vybez_public/tables/emails/columns/is_primary/alterations/alt0000000439 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table
-- requires: schemas/vybez_public/tables/emails/columns/is_primary/column

BEGIN;

ALTER TABLE "vybez_public".emails 
    ALTER COLUMN is_primary SET DEFAULT false;
COMMIT;

-- Deploy: schemas/vybez_public/tables/phone_numbers/columns/is_primary/alterations/alt0000000450 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table
-- requires: schemas/vybez_public/tables/phone_numbers/columns/is_primary/column

BEGIN;

ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN is_primary SET DEFAULT false;
COMMIT;

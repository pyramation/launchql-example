-- Deploy: schemas/vybez_public/tables/phone_numbers/columns/id/alterations/alt0000000441 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table
-- requires: schemas/vybez_public/tables/phone_numbers/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN id SET NOT NULL;
COMMIT;

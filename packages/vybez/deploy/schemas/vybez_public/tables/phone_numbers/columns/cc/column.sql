-- Deploy: schemas/vybez_public/tables/phone_numbers/columns/cc/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table

BEGIN;

ALTER TABLE "vybez_public".phone_numbers ADD COLUMN cc text;
COMMIT;

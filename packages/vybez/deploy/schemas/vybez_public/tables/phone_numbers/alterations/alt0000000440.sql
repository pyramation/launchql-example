-- Deploy: schemas/vybez_public/tables/phone_numbers/alterations/alt0000000440 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table

BEGIN;

ALTER TABLE "vybez_public".phone_numbers
    DISABLE ROW LEVEL SECURITY;
COMMIT;

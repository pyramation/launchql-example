-- Deploy: schemas/vybez_public/tables/crypto_addresses/columns/id/alterations/alt0000000452 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table
-- requires: schemas/vybez_public/tables/crypto_addresses/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN id SET NOT NULL;
COMMIT;

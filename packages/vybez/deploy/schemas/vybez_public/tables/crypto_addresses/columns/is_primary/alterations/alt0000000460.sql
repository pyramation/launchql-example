-- Deploy: schemas/vybez_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000000460 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table
-- requires: schemas/vybez_public/tables/crypto_addresses/columns/is_primary/column

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN is_primary SET NOT NULL;
COMMIT;

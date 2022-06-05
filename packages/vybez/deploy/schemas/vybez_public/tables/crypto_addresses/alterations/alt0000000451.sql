-- Deploy: schemas/vybez_public/tables/crypto_addresses/alterations/alt0000000451 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses
    DISABLE ROW LEVEL SECURITY;
COMMIT;

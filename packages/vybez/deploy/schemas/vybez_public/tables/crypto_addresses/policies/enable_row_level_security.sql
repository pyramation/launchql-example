-- Deploy: schemas/vybez_public/tables/crypto_addresses/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses
    ENABLE ROW LEVEL SECURITY;
COMMIT;

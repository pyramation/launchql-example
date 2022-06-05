-- Deploy: schemas/vybez_public/tables/crypto_addresses/columns/address/alterations/alt0000000457 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table
-- requires: schemas/vybez_public/tables/crypto_addresses/columns/address/column

BEGIN;
ALTER TABLE "vybez_public".crypto_addresses ADD CONSTRAINT crypto_addresses_address_chk CHECK (address ~* '^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$');
COMMIT;

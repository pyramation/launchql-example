-- Deploy: schemas/vybez_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000000454 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table
-- requires: schemas/vybez_public/tables/crypto_addresses/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;

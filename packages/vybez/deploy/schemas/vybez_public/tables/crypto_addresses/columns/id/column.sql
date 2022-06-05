-- Deploy: schemas/vybez_public/tables/crypto_addresses/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses ADD COLUMN id uuid;
COMMIT;

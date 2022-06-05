-- Deploy: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;
GRANT SELECT ON TABLE "vybez_public".crypto_addresses TO authenticated;
COMMIT;

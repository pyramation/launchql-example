-- Deploy: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;
GRANT INSERT ( address, owner_id, is_primary ) ON TABLE "vybez_public".crypto_addresses TO authenticated;
COMMIT;

-- Deploy: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;
GRANT UPDATE ( address, owner_id, is_primary ) ON TABLE "vybez_public".crypto_addresses TO authenticated;
COMMIT;

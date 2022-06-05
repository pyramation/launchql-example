-- Deploy: schemas/vybez_public/tables/crypto_addresses/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "vybez_public".crypto_addresses ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".crypto_addresses ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".crypto_addresses ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".crypto_addresses ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".crypto_addresses
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".crypto_addresses (created_at);
CREATE INDEX ON "vybez_public".crypto_addresses (updated_at);
COMMIT;

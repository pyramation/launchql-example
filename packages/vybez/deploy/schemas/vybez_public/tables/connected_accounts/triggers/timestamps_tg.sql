-- Deploy: schemas/vybez_public/tables/connected_accounts/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "vybez_public".connected_accounts ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".connected_accounts ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".connected_accounts ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".connected_accounts ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".connected_accounts
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".connected_accounts (created_at);
CREATE INDEX ON "vybez_public".connected_accounts (updated_at);
COMMIT;

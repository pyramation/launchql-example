-- Deploy: schemas/vybez_public/tables/emails/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/emails/table

BEGIN;

ALTER TABLE "vybez_public".emails ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".emails ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".emails ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".emails ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".emails
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".emails (created_at);
CREATE INDEX ON "vybez_public".emails (updated_at);
COMMIT;

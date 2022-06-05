-- Deploy: schemas/vybez_public/tables/publications/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".publications ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".publications ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".publications ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".publications
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".publications (created_at);
CREATE INDEX ON "vybez_public".publications (updated_at);
COMMIT;

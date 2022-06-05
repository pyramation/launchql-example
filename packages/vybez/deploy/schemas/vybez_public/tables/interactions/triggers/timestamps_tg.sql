-- Deploy: schemas/vybez_public/tables/interactions/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".interactions ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".interactions ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".interactions ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".interactions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".interactions (created_at);
CREATE INDEX ON "vybez_public".interactions (updated_at);
COMMIT;

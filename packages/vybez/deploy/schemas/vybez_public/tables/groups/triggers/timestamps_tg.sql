-- Deploy: schemas/vybez_public/tables/groups/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".groups ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".groups ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".groups ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".groups
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".groups (created_at);
CREATE INDEX ON "vybez_public".groups (updated_at);
COMMIT;

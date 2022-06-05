-- Deploy: schemas/vybez_public/tables/interaction_types/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;

ALTER TABLE "vybez_public".interaction_types ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".interaction_types ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".interaction_types ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".interaction_types ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".interaction_types
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".interaction_types (created_at);
CREATE INDEX ON "vybez_public".interaction_types (updated_at);
COMMIT;

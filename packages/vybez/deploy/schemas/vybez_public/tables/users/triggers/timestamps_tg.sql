-- Deploy: schemas/vybez_public/tables/users/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;

ALTER TABLE "vybez_public".users ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".users ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".users ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".users ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".users
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".users (created_at);
CREATE INDEX ON "vybez_public".users (updated_at);
COMMIT;

-- Deploy: schemas/vybez_public/tables/user_profiles/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;

ALTER TABLE "vybez_public".user_profiles ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".user_profiles ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_public".user_profiles ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_public".user_profiles ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".user_profiles
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_public".user_profiles (created_at);
CREATE INDEX ON "vybez_public".user_profiles (updated_at);
COMMIT;

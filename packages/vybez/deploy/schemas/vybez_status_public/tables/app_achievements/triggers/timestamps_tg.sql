-- Deploy: schemas/vybez_status_public/tables/app_achievements/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_achievements/table

BEGIN;

ALTER TABLE "vybez_status_public".app_achievements ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_status_public".app_achievements ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_status_public".app_achievements ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_status_public".app_achievements ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_status_public".app_achievements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_status_public".app_achievements (created_at);
CREATE INDEX ON "vybez_status_public".app_achievements (updated_at);
COMMIT;

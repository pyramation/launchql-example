-- Deploy: schemas/vybez_memberships_public/tables/grants/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".grants ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".grants ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_memberships_public".grants ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".grants ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_memberships_public".grants (created_at);
CREATE INDEX ON "vybez_memberships_public".grants (updated_at);
COMMIT;

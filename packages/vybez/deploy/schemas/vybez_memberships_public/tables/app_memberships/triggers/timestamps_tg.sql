-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".app_memberships ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_memberships_public".app_memberships ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".app_memberships ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_memberships_public".app_memberships (created_at);
CREATE INDEX ON "vybez_memberships_public".app_memberships (updated_at);
COMMIT;

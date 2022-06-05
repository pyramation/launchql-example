-- Deploy: schemas/vybez_memberships_public/tables/admin_grants/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/admin_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".admin_grants ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".admin_grants ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_memberships_public".admin_grants ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".admin_grants ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".admin_grants
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_memberships_public".admin_grants (created_at);
CREATE INDEX ON "vybez_memberships_public".admin_grants (updated_at);
COMMIT;

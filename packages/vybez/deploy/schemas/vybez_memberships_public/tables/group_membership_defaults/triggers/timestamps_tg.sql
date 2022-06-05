-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".group_membership_defaults ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_memberships_public".group_membership_defaults ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_memberships_public".group_membership_defaults ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".group_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_memberships_public".group_membership_defaults (created_at);
CREATE INDEX ON "vybez_memberships_public".group_membership_defaults (updated_at);
COMMIT;

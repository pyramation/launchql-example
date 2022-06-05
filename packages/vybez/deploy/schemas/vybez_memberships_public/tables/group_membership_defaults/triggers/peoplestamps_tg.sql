-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults ADD COLUMN created_by UUID;
ALTER TABLE "vybez_memberships_public".group_membership_defaults ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".group_membership_defaults
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_memberships_public".group_membership_defaults (created_by);
CREATE INDEX ON "vybez_memberships_public".group_membership_defaults (updated_by);
COMMIT;

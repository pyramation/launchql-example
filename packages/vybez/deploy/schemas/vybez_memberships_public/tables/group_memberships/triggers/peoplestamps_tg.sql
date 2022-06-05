-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships ADD COLUMN created_by UUID;
ALTER TABLE "vybez_memberships_public".group_memberships ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".group_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_memberships_public".group_memberships (created_by);
CREATE INDEX ON "vybez_memberships_public".group_memberships (updated_by);
COMMIT;

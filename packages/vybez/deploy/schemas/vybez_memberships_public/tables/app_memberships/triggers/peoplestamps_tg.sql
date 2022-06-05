-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships ADD COLUMN created_by UUID;
ALTER TABLE "vybez_memberships_public".app_memberships ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_memberships_public".app_memberships
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_memberships_public".app_memberships (created_by);
CREATE INDEX ON "vybez_memberships_public".app_memberships (updated_by);
COMMIT;

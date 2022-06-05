-- Deploy: schemas/vybez_public/tables/groups/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups ADD COLUMN created_by UUID;
ALTER TABLE "vybez_public".groups ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".groups
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_public".groups (created_by);
CREATE INDEX ON "vybez_public".groups (updated_by);
COMMIT;

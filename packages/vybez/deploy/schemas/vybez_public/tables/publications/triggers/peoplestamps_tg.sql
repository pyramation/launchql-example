-- Deploy: schemas/vybez_public/tables/publications/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN created_by UUID;
ALTER TABLE "vybez_public".publications ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".publications
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_public".publications (created_by);
CREATE INDEX ON "vybez_public".publications (updated_by);
COMMIT;

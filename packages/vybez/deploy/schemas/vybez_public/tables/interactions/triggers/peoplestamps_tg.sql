-- Deploy: schemas/vybez_public/tables/interactions/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions ADD COLUMN created_by UUID;
ALTER TABLE "vybez_public".interactions ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".interactions
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_public".interactions (created_by);
CREATE INDEX ON "vybez_public".interactions (updated_by);
COMMIT;

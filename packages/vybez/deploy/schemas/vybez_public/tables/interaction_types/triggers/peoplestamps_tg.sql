-- Deploy: schemas/vybez_public/tables/interaction_types/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;

ALTER TABLE "vybez_public".interaction_types ADD COLUMN created_by UUID;
ALTER TABLE "vybez_public".interaction_types ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".interaction_types
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_public".interaction_types (created_by);
CREATE INDEX ON "vybez_public".interaction_types (updated_by);
COMMIT;

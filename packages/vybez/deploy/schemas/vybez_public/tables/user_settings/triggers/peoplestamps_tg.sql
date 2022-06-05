-- Deploy: schemas/vybez_public/tables/user_settings/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;

ALTER TABLE "vybez_public".user_settings ADD COLUMN created_by UUID;
ALTER TABLE "vybez_public".user_settings ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_public".user_settings
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "vybez_public".user_settings (created_by);
CREATE INDEX ON "vybez_public".user_settings (updated_by);
COMMIT;

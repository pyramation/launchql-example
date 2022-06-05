-- Deploy: schemas/vybez_roles_private/tables/api_tokens/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "vybez_roles_private".api_tokens ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "vybez_roles_private".api_tokens ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "vybez_roles_private".api_tokens ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "vybez_roles_private".api_tokens
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "vybez_roles_private".api_tokens (created_at);
CREATE INDEX ON "vybez_roles_private".api_tokens (updated_at);
COMMIT;

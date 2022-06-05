-- Revert: schemas/vybez_roles_private/tables/api_tokens/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens DROP COLUMN created_at;
ALTER TABLE "vybez_roles_private".api_tokens DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_roles_private".api_tokens;

COMMIT;  


-- Revert: schemas/vybez_public/tables/user_settings/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN created_at;
ALTER TABLE "vybez_public".user_settings DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".user_settings;

COMMIT;  


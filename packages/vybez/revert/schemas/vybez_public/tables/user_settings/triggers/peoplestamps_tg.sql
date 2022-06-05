-- Revert: schemas/vybez_public/tables/user_settings/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN created_by;
ALTER TABLE "vybez_public".user_settings DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_public".user_settings;


COMMIT;  


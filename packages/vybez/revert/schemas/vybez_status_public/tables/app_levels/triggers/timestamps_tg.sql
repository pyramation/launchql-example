-- Revert: schemas/vybez_status_public/tables/app_levels/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_levels DROP COLUMN created_at;
ALTER TABLE "vybez_status_public".app_levels DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_status_public".app_levels;

COMMIT;  


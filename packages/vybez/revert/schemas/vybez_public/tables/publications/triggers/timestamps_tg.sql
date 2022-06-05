-- Revert: schemas/vybez_public/tables/publications/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN created_at;
ALTER TABLE "vybez_public".publications DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".publications;

COMMIT;  


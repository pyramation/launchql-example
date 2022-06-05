-- Revert: schemas/vybez_public/tables/phone_numbers/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers DROP COLUMN created_at;
ALTER TABLE "vybez_public".phone_numbers DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".phone_numbers;

COMMIT;  


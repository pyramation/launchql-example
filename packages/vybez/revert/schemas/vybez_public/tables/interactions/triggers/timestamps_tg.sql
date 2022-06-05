-- Revert: schemas/vybez_public/tables/interactions/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN created_at;
ALTER TABLE "vybez_public".interactions DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".interactions;

COMMIT;  


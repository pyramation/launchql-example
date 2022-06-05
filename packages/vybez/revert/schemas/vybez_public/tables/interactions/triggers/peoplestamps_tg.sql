-- Revert: schemas/vybez_public/tables/interactions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN created_by;
ALTER TABLE "vybez_public".interactions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_public".interactions;


COMMIT;  


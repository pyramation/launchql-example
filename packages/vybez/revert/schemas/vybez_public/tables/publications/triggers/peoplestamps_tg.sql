-- Revert: schemas/vybez_public/tables/publications/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN created_by;
ALTER TABLE "vybez_public".publications DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_public".publications;


COMMIT;  


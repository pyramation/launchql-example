-- Revert: schemas/vybez_public/tables/groups/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN created_by;
ALTER TABLE "vybez_public".groups DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_public".groups;


COMMIT;  


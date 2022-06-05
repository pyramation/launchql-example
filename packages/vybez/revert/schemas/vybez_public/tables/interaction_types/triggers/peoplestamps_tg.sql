-- Revert: schemas/vybez_public/tables/interaction_types/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN created_by;
ALTER TABLE "vybez_public".interaction_types DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_public".interaction_types;


COMMIT;  


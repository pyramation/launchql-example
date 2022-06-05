-- Revert: schemas/vybez_public/tables/interaction_types/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN created_at;
ALTER TABLE "vybez_public".interaction_types DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".interaction_types;

COMMIT;  


-- Revert: schemas/vybez_public/tables/users/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN created_at;
ALTER TABLE "vybez_public".users DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".users;

COMMIT;  


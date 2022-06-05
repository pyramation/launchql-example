-- Revert: schemas/vybez_public/tables/emails/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".emails DROP COLUMN created_at;
ALTER TABLE "vybez_public".emails DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".emails;

COMMIT;  


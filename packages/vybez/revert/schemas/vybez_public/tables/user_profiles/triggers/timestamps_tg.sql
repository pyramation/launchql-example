-- Revert: schemas/vybez_public/tables/user_profiles/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles DROP COLUMN created_at;
ALTER TABLE "vybez_public".user_profiles DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".user_profiles;

COMMIT;  


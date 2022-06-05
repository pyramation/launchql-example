-- Revert: schemas/vybez_public/tables/user_profiles/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles DROP COLUMN created_by;
ALTER TABLE "vybez_public".user_profiles DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "vybez_public".user_profiles;


COMMIT;  


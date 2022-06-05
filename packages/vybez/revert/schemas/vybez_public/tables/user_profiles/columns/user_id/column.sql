-- Revert: schemas/vybez_public/tables/user_profiles/columns/user_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles DROP COLUMN user_id;
COMMIT;  


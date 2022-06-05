-- Revert: schemas/vybez_public/tables/user_profiles/columns/bio/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles DROP COLUMN bio;
COMMIT;  


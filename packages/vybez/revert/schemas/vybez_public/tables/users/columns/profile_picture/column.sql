-- Revert: schemas/vybez_public/tables/users/columns/profile_picture/column from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN profile_picture;
COMMIT;  


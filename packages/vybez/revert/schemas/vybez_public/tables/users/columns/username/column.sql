-- Revert: schemas/vybez_public/tables/users/columns/username/column from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN username;
COMMIT;  


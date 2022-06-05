-- Revert: schemas/vybez_public/tables/users/columns/type/column from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN type;
COMMIT;  


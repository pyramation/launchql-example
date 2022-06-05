-- Revert: schemas/vybez_public/tables/users/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN id;
COMMIT;  


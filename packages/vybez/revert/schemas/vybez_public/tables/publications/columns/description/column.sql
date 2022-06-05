-- Revert: schemas/vybez_public/tables/publications/columns/description/column from pg

BEGIN;


ALTER TABLE "vybez_public".publications DROP COLUMN description;
COMMIT;  


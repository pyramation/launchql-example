-- Revert: schemas/vybez_public/tables/groups/columns/description/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN description;
COMMIT;  


-- Revert: schemas/vybez_public/tables/groups/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".groups DROP COLUMN id;
COMMIT;  


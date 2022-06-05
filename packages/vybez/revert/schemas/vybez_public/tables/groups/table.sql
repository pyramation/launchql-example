-- Revert: schemas/vybez_public/tables/groups/table from pg

BEGIN;
DROP TABLE "vybez_public".groups;
COMMIT;  


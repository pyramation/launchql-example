-- Revert: schemas/vybez_public/tables/publications/table from pg

BEGIN;
DROP TABLE "vybez_public".publications;
COMMIT;  


-- Revert: schemas/vybez_public/tables/interactions/table from pg

BEGIN;
DROP TABLE "vybez_public".interactions;
COMMIT;  


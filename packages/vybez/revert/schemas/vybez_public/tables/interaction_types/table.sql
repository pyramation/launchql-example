-- Revert: schemas/vybez_public/tables/interaction_types/table from pg

BEGIN;
DROP TABLE "vybez_public".interaction_types;
COMMIT;  


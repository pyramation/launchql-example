-- Revert: schemas/vybez_public/tables/interaction_types/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN id;
COMMIT;  


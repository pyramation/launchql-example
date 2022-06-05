-- Revert: schemas/vybez_public/tables/interaction_types/columns/description/column from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN description;
COMMIT;  


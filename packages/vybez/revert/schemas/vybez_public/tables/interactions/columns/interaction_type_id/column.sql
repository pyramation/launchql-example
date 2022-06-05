-- Revert: schemas/vybez_public/tables/interactions/columns/interaction_type_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".interactions DROP COLUMN interaction_type_id;
COMMIT;  


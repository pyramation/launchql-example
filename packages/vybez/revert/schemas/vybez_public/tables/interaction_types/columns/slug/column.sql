-- Revert: schemas/vybez_public/tables/interaction_types/columns/slug/column from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN slug;
COMMIT;  


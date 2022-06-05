-- Revert: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_slug_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types 
    DROP CONSTRAINT interaction_types_slug_key;

COMMIT;  


-- Revert: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_slug_key/alterations/alt0000000614 from pg

BEGIN;
COMMENT ON CONSTRAINT interaction_types_slug_key ON "vybez_public".interaction_types IS NULL;
COMMIT;  


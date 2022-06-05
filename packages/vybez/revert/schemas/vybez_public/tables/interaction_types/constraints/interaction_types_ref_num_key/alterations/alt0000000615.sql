-- Revert: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_ref_num_key/alterations/alt0000000615 from pg

BEGIN;
COMMENT ON CONSTRAINT interaction_types_ref_num_key ON "vybez_public".interaction_types IS NULL;
COMMIT;  


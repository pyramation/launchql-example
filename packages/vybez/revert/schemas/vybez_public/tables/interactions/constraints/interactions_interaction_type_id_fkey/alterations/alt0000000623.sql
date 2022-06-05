-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_interaction_type_id_fkey/alterations/alt0000000623 from pg

BEGIN;
COMMENT ON CONSTRAINT interactions_interaction_type_id_fkey ON "vybez_public".interactions IS NULL;
COMMIT;  


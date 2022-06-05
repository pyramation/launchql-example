-- Revert: schemas/vybez_public/tables/interaction_types/triggers/interaction_types_ref_num_immutable_tg from pg

BEGIN;
DROP TRIGGER interaction_types_ref_num_immutable_tg ON "vybez_public".interaction_types;
COMMIT;  


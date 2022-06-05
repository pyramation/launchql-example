-- Revert: schemas/vybez_public/tables/interaction_types/alterations/alt0000000609 from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  


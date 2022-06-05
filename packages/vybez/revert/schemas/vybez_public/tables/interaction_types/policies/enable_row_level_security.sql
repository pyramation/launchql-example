-- Revert: schemas/vybez_public/tables/interaction_types/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


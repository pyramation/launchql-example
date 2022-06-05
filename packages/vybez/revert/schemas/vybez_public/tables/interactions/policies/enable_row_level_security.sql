-- Revert: schemas/vybez_public/tables/interactions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".interactions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


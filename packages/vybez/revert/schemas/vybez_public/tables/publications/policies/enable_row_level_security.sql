-- Revert: schemas/vybez_public/tables/publications/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".publications
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


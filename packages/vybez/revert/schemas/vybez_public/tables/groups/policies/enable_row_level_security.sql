-- Revert: schemas/vybez_public/tables/groups/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".groups
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


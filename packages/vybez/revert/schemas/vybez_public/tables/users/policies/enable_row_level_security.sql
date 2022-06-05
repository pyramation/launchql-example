-- Revert: schemas/vybez_public/tables/users/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".users
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


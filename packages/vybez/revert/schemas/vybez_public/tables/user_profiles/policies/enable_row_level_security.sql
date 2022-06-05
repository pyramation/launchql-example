-- Revert: schemas/vybez_public/tables/user_profiles/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


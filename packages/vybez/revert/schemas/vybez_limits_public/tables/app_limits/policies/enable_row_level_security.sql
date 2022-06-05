-- Revert: schemas/vybez_limits_public/tables/app_limits/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limits
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


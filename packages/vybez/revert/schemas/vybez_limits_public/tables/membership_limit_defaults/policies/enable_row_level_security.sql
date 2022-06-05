-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limit_defaults
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


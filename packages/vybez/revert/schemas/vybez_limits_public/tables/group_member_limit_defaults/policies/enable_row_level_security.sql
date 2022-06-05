-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limit_defaults
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


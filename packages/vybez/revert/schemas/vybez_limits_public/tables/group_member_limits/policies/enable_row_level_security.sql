-- Revert: schemas/vybez_limits_public/tables/group_member_limits/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


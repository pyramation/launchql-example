-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permission_defaults
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


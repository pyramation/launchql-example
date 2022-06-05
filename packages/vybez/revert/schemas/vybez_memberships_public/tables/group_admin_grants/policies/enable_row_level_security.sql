-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


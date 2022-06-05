-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permission_defaults
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


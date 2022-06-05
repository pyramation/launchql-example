-- Revert: schemas/vybez_permissions_public/tables/app_permissions/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


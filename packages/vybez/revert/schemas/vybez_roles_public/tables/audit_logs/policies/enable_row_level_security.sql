-- Revert: schemas/vybez_roles_public/tables/audit_logs/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


-- Revert: schemas/vybez_roles_public/tables/audit_logs/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_roles_public".audit_logs;
COMMIT;  


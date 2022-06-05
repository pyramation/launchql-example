-- Verify: schemas/vybez_roles_public/tables/audit_logs/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_roles_public.audit_logs');
COMMIT;  


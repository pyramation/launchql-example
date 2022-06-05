-- Verify: schemas/vybez_roles_public/tables/audit_logs/table on pg

BEGIN;
SELECT verify_table('vybez_roles_public.audit_logs');
COMMIT;  


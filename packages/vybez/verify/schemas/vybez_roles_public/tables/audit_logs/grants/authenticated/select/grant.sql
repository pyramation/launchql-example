-- Verify: schemas/vybez_roles_public/tables/audit_logs/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_roles_public.audit_logs', 'select', 'authenticated');
COMMIT;  


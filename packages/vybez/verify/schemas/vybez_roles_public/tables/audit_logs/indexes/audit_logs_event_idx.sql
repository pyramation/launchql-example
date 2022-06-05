-- Verify: schemas/vybez_roles_public/tables/audit_logs/indexes/audit_logs_event_idx on pg

BEGIN;
SELECT verify_index('vybez_roles_public.audit_logs', 'audit_logs_event_idx');
COMMIT;  


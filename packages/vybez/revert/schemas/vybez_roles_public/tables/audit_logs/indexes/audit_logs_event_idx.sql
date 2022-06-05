-- Revert: schemas/vybez_roles_public/tables/audit_logs/indexes/audit_logs_event_idx from pg

BEGIN;
DROP INDEX "vybez_roles_public".audit_logs_event_idx;
COMMIT;  


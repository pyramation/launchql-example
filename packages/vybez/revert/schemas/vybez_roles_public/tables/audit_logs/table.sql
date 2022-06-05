-- Revert: schemas/vybez_roles_public/tables/audit_logs/table from pg

BEGIN;
DROP TABLE "vybez_roles_public".audit_logs;
COMMIT;  


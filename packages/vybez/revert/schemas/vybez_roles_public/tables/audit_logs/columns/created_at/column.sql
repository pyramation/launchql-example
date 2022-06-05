-- Revert: schemas/vybez_roles_public/tables/audit_logs/columns/created_at/column from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs DROP COLUMN created_at;
COMMIT;  


-- Revert: schemas/vybez_roles_public/tables/audit_logs/constraints/audit_logs_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs 
    DROP CONSTRAINT audit_logs_pkey;

COMMIT;  


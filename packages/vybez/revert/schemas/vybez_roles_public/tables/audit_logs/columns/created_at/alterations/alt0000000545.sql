-- Revert: schemas/vybez_roles_public/tables/audit_logs/columns/created_at/alterations/alt0000000545 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN created_at DROP DEFAULT;

COMMIT;  


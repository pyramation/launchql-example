-- Revert: schemas/vybez_roles_public/tables/audit_logs/columns/origin/alterations/alt0000000540 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN origin DROP DEFAULT;

COMMIT;  


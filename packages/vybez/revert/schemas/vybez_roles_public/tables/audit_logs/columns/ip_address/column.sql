-- Revert: schemas/vybez_roles_public/tables/audit_logs/columns/ip_address/column from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs DROP COLUMN ip_address;
COMMIT;  


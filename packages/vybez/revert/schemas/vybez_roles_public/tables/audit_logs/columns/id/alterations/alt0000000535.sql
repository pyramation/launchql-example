-- Revert: schemas/vybez_roles_public/tables/audit_logs/columns/id/alterations/alt0000000535 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  


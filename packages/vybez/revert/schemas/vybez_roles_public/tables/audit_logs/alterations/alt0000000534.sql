-- Revert: schemas/vybez_roles_public/tables/audit_logs/alterations/alt0000000534 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs
    ENABLE ROW LEVEL SECURITY;

COMMIT;  


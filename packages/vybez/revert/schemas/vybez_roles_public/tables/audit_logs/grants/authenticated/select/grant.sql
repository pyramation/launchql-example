-- Revert: schemas/vybez_roles_public/tables/audit_logs/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_roles_public".audit_logs FROM authenticated;
COMMIT;  


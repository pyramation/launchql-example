-- Deploy: schemas/vybez_roles_public/tables/audit_logs/alterations/alt0000000534 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table

BEGIN;

ALTER TABLE "vybez_roles_public".audit_logs
    DISABLE ROW LEVEL SECURITY;
COMMIT;

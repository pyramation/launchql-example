-- Deploy: schemas/vybez_roles_public/tables/audit_logs/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table

BEGIN;

ALTER TABLE "vybez_roles_public".audit_logs
    ENABLE ROW LEVEL SECURITY;
COMMIT;

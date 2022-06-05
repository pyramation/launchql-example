-- Deploy: schemas/vybez_roles_public/tables/audit_logs/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table

BEGIN;
GRANT SELECT ON TABLE "vybez_roles_public".audit_logs TO authenticated;
COMMIT;

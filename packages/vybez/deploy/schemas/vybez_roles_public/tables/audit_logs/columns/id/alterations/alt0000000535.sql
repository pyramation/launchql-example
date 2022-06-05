-- Deploy: schemas/vybez_roles_public/tables/audit_logs/columns/id/alterations/alt0000000535 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/columns/id/column

BEGIN;

ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN id SET NOT NULL;
COMMIT;

-- Deploy: schemas/vybez_roles_public/tables/audit_logs/columns/created_at/alterations/alt0000000544 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/columns/created_at/column

BEGIN;

ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN created_at SET NOT NULL;
COMMIT;

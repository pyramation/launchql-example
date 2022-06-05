-- Deploy: schemas/vybez_roles_public/tables/audit_logs/columns/actor_id/alterations/alt0000000538 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;

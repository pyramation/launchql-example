-- Deploy: schemas/vybez_roles_public/tables/audit_logs/indexes/audit_logs_event_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/columns/event/column

BEGIN;
CREATE INDEX audit_logs_event_idx ON "vybez_roles_public".audit_logs (event);
COMMIT;

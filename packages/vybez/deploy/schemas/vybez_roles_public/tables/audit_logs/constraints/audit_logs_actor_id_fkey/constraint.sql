-- Deploy: schemas/vybez_roles_public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_roles_public/tables/audit_logs/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_roles_public/tables/audit_logs/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_roles_public".audit_logs 
    ADD CONSTRAINT audit_logs_actor_id_fkey 
    FOREIGN KEY (actor_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;

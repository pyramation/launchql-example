-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/constraints/auth_accounts_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_roles_public".auth_accounts 
    ADD CONSTRAINT auth_accounts_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;

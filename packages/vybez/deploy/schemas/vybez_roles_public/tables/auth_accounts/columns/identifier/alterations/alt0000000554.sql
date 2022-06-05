-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/identifier/alterations/alt0000000554 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/identifier/column

BEGIN;
COMMENT ON COLUMN "vybez_roles_public".auth_accounts.identifier IS E'A unique identifier for the user within the service';
COMMIT;

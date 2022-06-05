-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/details/alterations/alt0000000556 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/details/column

BEGIN;
COMMENT ON COLUMN "vybez_roles_public".auth_accounts.details IS E'Additional profile details extracted from this login method';
COMMIT;

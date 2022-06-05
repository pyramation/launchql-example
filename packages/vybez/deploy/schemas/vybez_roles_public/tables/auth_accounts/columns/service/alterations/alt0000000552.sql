-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/service/alterations/alt0000000552 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/service/column

BEGIN;
COMMENT ON COLUMN "vybez_roles_public".auth_accounts.service IS E'The service used, e.g. `twitter` or `github`.';
COMMIT;

-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/constraints/auth_accounts_service_identifier_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "vybez_roles_public".auth_accounts
    ADD CONSTRAINT auth_accounts_service_identifier_key UNIQUE (service,identifier);
COMMIT;

-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table

BEGIN;
GRANT INSERT ( service, identifier, details, owner_id ) ON TABLE "vybez_roles_public".auth_accounts TO authenticated;
COMMIT;

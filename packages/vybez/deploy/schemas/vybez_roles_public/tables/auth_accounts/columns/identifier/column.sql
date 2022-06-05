-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/identifier/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "vybez_roles_public".auth_accounts ADD COLUMN identifier text;
COMMIT;

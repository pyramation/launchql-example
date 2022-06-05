-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/is_verified/alterations/alt0000000558 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/is_verified/column

BEGIN;

ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN is_verified SET DEFAULT false;
COMMIT;

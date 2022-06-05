-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/service/alterations/alt0000000551 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/service/column

BEGIN;

ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN service SET NOT NULL;
COMMIT;

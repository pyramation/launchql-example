-- Deploy: schemas/vybez_roles_public/tables/auth_accounts/columns/owner_id/alterations/alt0000000550 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema
-- requires: schemas/vybez_roles_public/tables/auth_accounts/table
-- requires: schemas/vybez_roles_public/tables/auth_accounts/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN owner_id SET DEFAULT jwt_public.current_user_id();
COMMIT;

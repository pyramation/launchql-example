-- Revert: schemas/vybez_roles_public/tables/auth_accounts/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts DROP COLUMN id;
COMMIT;  


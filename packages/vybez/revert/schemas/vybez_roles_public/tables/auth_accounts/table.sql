-- Revert: schemas/vybez_roles_public/tables/auth_accounts/table from pg

BEGIN;
DROP TABLE "vybez_roles_public".auth_accounts;
COMMIT;  


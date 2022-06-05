-- Revert: schemas/vybez_roles_public/tables/auth_accounts/columns/details/alterations/alt0000000556 from pg

BEGIN;
COMMENT ON COLUMN "vybez_roles_public".auth_accounts.details IS NULL;
COMMIT;  


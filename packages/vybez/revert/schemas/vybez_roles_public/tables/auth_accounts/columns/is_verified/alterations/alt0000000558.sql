-- Revert: schemas/vybez_roles_public/tables/auth_accounts/columns/is_verified/alterations/alt0000000558 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  


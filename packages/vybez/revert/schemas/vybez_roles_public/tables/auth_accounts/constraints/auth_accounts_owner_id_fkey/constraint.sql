-- Revert: schemas/vybez_roles_public/tables/auth_accounts/constraints/auth_accounts_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts 
    DROP CONSTRAINT auth_accounts_owner_id_fkey;

COMMIT;  


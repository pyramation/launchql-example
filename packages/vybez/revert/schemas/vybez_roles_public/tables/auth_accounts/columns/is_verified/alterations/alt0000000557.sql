-- Revert: schemas/vybez_roles_public/tables/auth_accounts/columns/is_verified/alterations/alt0000000557 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  


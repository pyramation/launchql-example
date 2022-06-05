-- Revert: schemas/vybez_roles_public/tables/auth_accounts/columns/details/alterations/alt0000000555 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN details DROP NOT NULL;


COMMIT;  


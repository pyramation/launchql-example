-- Revert: schemas/vybez_roles_public/tables/auth_accounts/columns/owner_id/alterations/alt0000000549 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  


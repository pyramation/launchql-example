-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000000091 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN is_banned DROP NOT NULL;


COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000000095 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  


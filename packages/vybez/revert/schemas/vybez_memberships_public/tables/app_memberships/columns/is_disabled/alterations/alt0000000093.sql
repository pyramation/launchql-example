-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/is_disabled/alterations/alt0000000093 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN is_disabled DROP NOT NULL;


COMMIT;  


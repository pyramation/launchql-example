-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/permissions/alterations/alt0000000103 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  


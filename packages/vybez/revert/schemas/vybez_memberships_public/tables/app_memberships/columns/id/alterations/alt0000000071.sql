-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/id/alterations/alt0000000071 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  


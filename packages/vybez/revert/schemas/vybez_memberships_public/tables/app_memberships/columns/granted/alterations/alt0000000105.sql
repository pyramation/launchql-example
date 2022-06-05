-- Revert: schemas/vybez_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000000105 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN granted DROP NOT NULL;


COMMIT;  


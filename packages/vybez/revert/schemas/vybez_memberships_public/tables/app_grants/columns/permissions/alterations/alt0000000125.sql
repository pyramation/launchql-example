-- Revert: schemas/vybez_memberships_public/tables/app_grants/columns/permissions/alterations/alt0000000125 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  


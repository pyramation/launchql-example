-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/permissions/alterations/alt0000000231 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN permissions DROP DEFAULT;

COMMIT;  


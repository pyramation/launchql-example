-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_active/alterations/alt0000000324 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_active DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_banned/alterations/alt0000000320 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_banned DROP DEFAULT;

COMMIT;  


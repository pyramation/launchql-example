-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/is_banned/alterations/alt0000000221 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_banned DROP DEFAULT;

COMMIT;  


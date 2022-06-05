-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/is_admin/alterations/alt0000000229 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_admin DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/is_active/alterations/alt0000000225 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_active DROP DEFAULT;

COMMIT;  


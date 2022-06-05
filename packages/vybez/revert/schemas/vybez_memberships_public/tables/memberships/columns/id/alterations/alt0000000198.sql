-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/id/alterations/alt0000000198 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/granted/alterations/alt0000000233 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN granted DROP DEFAULT;

COMMIT;  


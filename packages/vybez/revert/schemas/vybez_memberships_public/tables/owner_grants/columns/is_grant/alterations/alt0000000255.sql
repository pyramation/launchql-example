-- Revert: schemas/vybez_memberships_public/tables/owner_grants/columns/is_grant/alterations/alt0000000255 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".owner_grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  


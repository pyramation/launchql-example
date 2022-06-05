-- Revert: schemas/vybez_memberships_public/tables/admin_grants/columns/is_grant/alterations/alt0000000247 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants 
    ALTER COLUMN is_grant DROP DEFAULT;

COMMIT;  


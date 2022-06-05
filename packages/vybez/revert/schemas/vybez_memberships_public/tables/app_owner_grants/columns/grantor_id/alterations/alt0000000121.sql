-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/columns/grantor_id/alterations/alt0000000121 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_owner_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


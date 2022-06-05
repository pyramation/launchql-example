-- Revert: schemas/vybez_memberships_public/tables/app_grants/columns/grantor_id/alterations/alt0000000130 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


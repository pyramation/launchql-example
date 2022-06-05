-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/columns/grantor_id/alterations/alt0000000114 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_admin_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


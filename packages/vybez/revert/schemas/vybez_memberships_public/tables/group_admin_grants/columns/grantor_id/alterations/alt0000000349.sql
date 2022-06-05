-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/columns/grantor_id/alterations/alt0000000349 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/grantor_id/alterations/alt0000000357 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


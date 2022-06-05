-- Revert: schemas/vybez_memberships_public/tables/group_grants/columns/grantor_id/alterations/alt0000000367 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


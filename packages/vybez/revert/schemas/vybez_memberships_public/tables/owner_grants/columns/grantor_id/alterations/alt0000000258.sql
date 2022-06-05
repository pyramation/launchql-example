-- Revert: schemas/vybez_memberships_public/tables/owner_grants/columns/grantor_id/alterations/alt0000000258 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".owner_grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


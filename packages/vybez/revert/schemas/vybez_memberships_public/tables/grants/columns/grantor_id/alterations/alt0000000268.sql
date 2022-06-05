-- Revert: schemas/vybez_memberships_public/tables/grants/columns/grantor_id/alterations/alt0000000268 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN grantor_id DROP DEFAULT;

COMMIT;  


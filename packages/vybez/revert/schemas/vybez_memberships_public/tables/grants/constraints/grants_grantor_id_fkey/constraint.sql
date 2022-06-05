-- Revert: schemas/vybez_memberships_public/tables/grants/constraints/grants_grantor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants 
    DROP CONSTRAINT grants_grantor_id_fkey;

COMMIT;  


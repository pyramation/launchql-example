-- Revert: schemas/vybez_public/tables/publications/constraints/publications_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    DROP CONSTRAINT publications_owner_id_fkey;

COMMIT;  


-- Revert: schemas/vybez_public/tables/publications/constraints/publications_group_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    DROP CONSTRAINT publications_group_id_fkey;

COMMIT;  


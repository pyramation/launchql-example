-- Revert: schemas/vybez_public/tables/publications/constraints/publications_slug_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    DROP CONSTRAINT publications_slug_key;

COMMIT;  


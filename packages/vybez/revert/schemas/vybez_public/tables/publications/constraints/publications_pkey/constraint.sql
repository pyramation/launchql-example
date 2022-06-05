-- Revert: schemas/vybez_public/tables/publications/constraints/publications_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".publications 
    DROP CONSTRAINT publications_pkey;

COMMIT;  


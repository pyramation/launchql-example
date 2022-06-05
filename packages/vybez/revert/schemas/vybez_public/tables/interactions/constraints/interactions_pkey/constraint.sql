-- Revert: schemas/vybez_public/tables/interactions/constraints/interactions_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".interactions 
    DROP CONSTRAINT interactions_pkey;

COMMIT;  


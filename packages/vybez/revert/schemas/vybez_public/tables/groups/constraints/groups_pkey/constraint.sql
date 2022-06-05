-- Revert: schemas/vybez_public/tables/groups/constraints/groups_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".groups 
    DROP CONSTRAINT groups_pkey;

COMMIT;  


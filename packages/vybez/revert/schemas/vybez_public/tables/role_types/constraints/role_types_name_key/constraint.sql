-- Revert: schemas/vybez_public/tables/role_types/constraints/role_types_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".role_types 
    DROP CONSTRAINT role_types_name_key;

COMMIT;  


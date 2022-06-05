-- Revert: schemas/vybez_public/tables/users/constraints/users_type_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".users 
    DROP CONSTRAINT users_type_fkey;

COMMIT;  


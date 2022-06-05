-- Revert: schemas/vybez_public/tables/users/constraints/users_username_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".users 
    DROP CONSTRAINT users_username_key;

COMMIT;  


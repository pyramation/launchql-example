-- Revert: schemas/vybez_public/tables/users/constraints/users_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".users 
    DROP CONSTRAINT users_pkey;

COMMIT;  


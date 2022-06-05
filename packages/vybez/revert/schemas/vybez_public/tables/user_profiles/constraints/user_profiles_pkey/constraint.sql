-- Revert: schemas/vybez_public/tables/user_profiles/constraints/user_profiles_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles 
    DROP CONSTRAINT user_profiles_pkey;

COMMIT;  


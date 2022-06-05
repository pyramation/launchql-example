-- Revert: schemas/vybez_public/tables/user_profiles/columns/user_id/alterations/alt0000000562 from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  


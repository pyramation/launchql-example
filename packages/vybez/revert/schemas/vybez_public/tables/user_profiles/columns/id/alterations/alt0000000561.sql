-- Revert: schemas/vybez_public/tables/user_profiles/columns/id/alterations/alt0000000561 from pg

BEGIN;


ALTER TABLE "vybez_public".user_profiles 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


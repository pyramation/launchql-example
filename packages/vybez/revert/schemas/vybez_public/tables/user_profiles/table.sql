-- Revert: schemas/vybez_public/tables/user_profiles/table from pg

BEGIN;
DROP TABLE "vybez_public".user_profiles;
COMMIT;  


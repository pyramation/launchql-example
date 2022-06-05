-- Revert: schemas/vybez_public/tables/user_profiles/columns/bio/alterations/alt0000000564 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".user_profiles.bio IS NULL;
COMMIT;  


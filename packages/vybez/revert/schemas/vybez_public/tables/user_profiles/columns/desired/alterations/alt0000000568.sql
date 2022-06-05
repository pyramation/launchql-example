-- Revert: schemas/vybez_public/tables/user_profiles/columns/desired/alterations/alt0000000568 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".user_profiles.desired IS NULL;
COMMIT;  


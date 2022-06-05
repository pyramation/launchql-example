-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/columns/name/alterations/alt0000000065 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limit_defaults 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  


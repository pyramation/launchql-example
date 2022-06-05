-- Revert: schemas/vybez_limits_public/tables/app_limit_defaults/constraints/app_limit_defaults_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limit_defaults 
    DROP CONSTRAINT app_limit_defaults_name_key;

COMMIT;  


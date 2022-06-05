-- Revert: schemas/vybez_limits_public/tables/membership_limit_defaults/constraints/membership_limit_defaults_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limit_defaults 
    DROP CONSTRAINT membership_limit_defaults_name_key;

COMMIT;  


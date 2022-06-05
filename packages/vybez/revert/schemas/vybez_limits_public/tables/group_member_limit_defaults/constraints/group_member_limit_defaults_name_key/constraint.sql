-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/constraints/group_member_limit_defaults_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limit_defaults 
    DROP CONSTRAINT group_member_limit_defaults_name_key;

COMMIT;  


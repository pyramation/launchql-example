-- Revert: schemas/vybez_limits_public/tables/group_member_limits/constraints/group_member_limits_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits 
    DROP CONSTRAINT group_member_limits_entity_id_fkey;

COMMIT;  


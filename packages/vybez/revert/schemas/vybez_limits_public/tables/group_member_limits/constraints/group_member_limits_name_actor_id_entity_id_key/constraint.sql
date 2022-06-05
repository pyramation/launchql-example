-- Revert: schemas/vybez_limits_public/tables/group_member_limits/constraints/group_member_limits_name_actor_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits 
    DROP CONSTRAINT group_member_limits_name_actor_id_entity_id_key;

COMMIT;  


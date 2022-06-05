-- Revert: schemas/vybez_limits_public/tables/membership_limits/constraints/membership_limits_name_actor_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limits 
    DROP CONSTRAINT membership_limits_name_actor_id_entity_id_key;

COMMIT;  


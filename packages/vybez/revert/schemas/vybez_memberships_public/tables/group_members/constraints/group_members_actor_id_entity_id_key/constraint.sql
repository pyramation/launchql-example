-- Revert: schemas/vybez_memberships_public/tables/group_members/constraints/group_members_actor_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members 
    DROP CONSTRAINT group_members_actor_id_entity_id_key;

COMMIT;  


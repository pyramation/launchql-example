-- Revert: schemas/vybez_memberships_public/tables/group_memberships/constraints/group_memberships_actor_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    DROP CONSTRAINT group_memberships_actor_id_entity_id_key;

COMMIT;  


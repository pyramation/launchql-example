-- Deploy: schemas/vybez_limits_public/tables/group_member_limits/constraints/group_member_limits_name_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".group_member_limits
    ADD CONSTRAINT group_member_limits_name_actor_id_entity_id_key UNIQUE (name,actor_id,entity_id);
COMMIT;

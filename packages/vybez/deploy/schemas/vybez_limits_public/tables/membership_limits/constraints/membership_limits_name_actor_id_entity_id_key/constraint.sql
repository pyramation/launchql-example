-- Deploy: schemas/vybez_limits_public/tables/membership_limits/constraints/membership_limits_name_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limits
    ADD CONSTRAINT membership_limits_name_actor_id_entity_id_key UNIQUE (name,actor_id,entity_id);
COMMIT;

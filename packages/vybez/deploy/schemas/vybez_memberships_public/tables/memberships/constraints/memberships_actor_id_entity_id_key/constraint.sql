-- Deploy: schemas/vybez_memberships_public/tables/memberships/constraints/memberships_actor_id_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships
    ADD CONSTRAINT memberships_actor_id_entity_id_key UNIQUE (actor_id,entity_id);
COMMIT;

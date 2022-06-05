-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/constraints/group_membership_defaults_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults
    ADD CONSTRAINT group_membership_defaults_entity_id_key UNIQUE (entity_id);
COMMIT;

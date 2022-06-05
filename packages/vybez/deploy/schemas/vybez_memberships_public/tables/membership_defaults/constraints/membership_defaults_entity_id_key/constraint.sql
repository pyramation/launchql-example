-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/constraints/membership_defaults_entity_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_defaults
    ADD CONSTRAINT membership_defaults_entity_id_key UNIQUE (entity_id);
COMMIT;

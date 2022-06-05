-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/constraints/group_membership_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults
    ADD CONSTRAINT group_membership_defaults_pkey PRIMARY KEY (id);
COMMIT;

-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/constraints/membership_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_defaults
    ADD CONSTRAINT membership_defaults_pkey PRIMARY KEY (id);
COMMIT;

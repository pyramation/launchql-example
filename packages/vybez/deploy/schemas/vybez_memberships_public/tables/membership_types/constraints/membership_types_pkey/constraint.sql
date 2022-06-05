-- Deploy: schemas/vybez_memberships_public/tables/membership_types/constraints/membership_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_types/table

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_types
    ADD CONSTRAINT membership_types_pkey PRIMARY KEY (id);
COMMIT;

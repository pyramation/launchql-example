-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/constraints/group_memberships_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships
    ADD CONSTRAINT group_memberships_pkey PRIMARY KEY (id);
COMMIT;

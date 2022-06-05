-- Deploy: schemas/vybez_memberships_public/tables/group_members/constraints/group_members_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_members
    ADD CONSTRAINT group_members_pkey PRIMARY KEY (id);
COMMIT;

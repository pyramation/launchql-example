-- Deploy: schemas/vybez_memberships_public/tables/group_grants/constraints/group_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_grants
    ADD CONSTRAINT group_grants_pkey PRIMARY KEY (id);
COMMIT;

-- Deploy: schemas/vybez_memberships_public/tables/memberships/constraints/memberships_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships
    ADD CONSTRAINT memberships_pkey PRIMARY KEY (id);
COMMIT;

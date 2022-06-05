-- Deploy: schemas/vybez_memberships_public/tables/grants/constraints/grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".grants
    ADD CONSTRAINT grants_pkey PRIMARY KEY (id);
COMMIT;

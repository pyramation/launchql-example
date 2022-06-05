-- Deploy: schemas/vybez_memberships_public/tables/admin_grants/constraints/admin_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/admin_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".admin_grants
    ADD CONSTRAINT admin_grants_pkey PRIMARY KEY (id);
COMMIT;

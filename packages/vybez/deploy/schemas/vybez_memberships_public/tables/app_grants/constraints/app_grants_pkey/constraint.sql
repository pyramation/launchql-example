-- Deploy: schemas/vybez_memberships_public/tables/app_grants/constraints/app_grants_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_grants
    ADD CONSTRAINT app_grants_pkey PRIMARY KEY (id);
COMMIT;

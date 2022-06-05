-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/constraints/membership_permissions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permissions
    ADD CONSTRAINT membership_permissions_pkey PRIMARY KEY (id);
COMMIT;

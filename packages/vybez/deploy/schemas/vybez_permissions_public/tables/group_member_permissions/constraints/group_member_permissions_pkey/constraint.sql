-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/constraints/group_member_permissions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permissions
    ADD CONSTRAINT group_member_permissions_pkey PRIMARY KEY (id);
COMMIT;

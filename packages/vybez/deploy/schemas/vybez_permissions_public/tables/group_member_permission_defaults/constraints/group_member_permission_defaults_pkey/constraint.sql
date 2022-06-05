-- Deploy: schemas/vybez_permissions_public/tables/group_member_permission_defaults/constraints/group_member_permission_defaults_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permission_defaults
    ADD CONSTRAINT group_member_permission_defaults_pkey PRIMARY KEY (id);
COMMIT;

-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/constraints/app_permissions_name_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".app_permissions
    ADD CONSTRAINT app_permissions_name_key UNIQUE (name);
COMMIT;

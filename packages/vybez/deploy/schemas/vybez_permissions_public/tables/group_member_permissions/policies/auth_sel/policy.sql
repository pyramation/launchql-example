-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;
CREATE POLICY auth_sel ON "vybez_permissions_public".group_member_permissions FOR SELECT TO authenticated USING ( TRUE );
COMMIT;

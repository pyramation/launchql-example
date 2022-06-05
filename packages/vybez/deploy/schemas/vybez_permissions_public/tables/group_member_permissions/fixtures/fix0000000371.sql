-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/fixtures/fix0000000371 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;
INSERT INTO "vybez_permissions_public".group_member_permissions (bitnum, name, description) VALUES (11, 'create_posts', 'Create posts within the group'), (12, 'admin_posts', 'Manage posts within the group');
COMMIT;

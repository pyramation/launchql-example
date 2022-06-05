-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/fixtures/fix0000000368 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;
INSERT INTO "vybez_permissions_public".group_member_permissions (bitnum, name, description) VALUES (1, 'admin_members', 'Manage members of the group.'), (2, 'create_invites', 'Create invites for the group.'), (3, 'admin_invites', 'Manage invites of the group.'), (4, 'invites_approved', 'Invites sent are approved for the group.'), (5, 'admin_limits', 'Manage limits within the group.'), (6, 'admin_permissions', 'Manage permissions within the group.'), (7, 'admin_levels', 'Manage levels of the group.'), (8, 'admin_objects', 'Manage objects of the group.'), (9, 'admin_privileged_data', 'Manage privileged data within the group.'), (10, 'admin_group', 'Manage group info.');
COMMIT;

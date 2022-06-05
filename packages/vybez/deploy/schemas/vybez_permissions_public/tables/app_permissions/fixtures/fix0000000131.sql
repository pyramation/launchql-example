-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/fixtures/fix0000000131 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table

BEGIN;
INSERT INTO "vybez_permissions_public".app_permissions (bitnum, name, description) VALUES (1, 'admin_members', 'Manage members of the app.'), (2, 'create_invites', 'Create invites for the app.'), (3, 'admin_invites', 'Approve invites of the app.'), (4, 'invites_approved', 'Invites sent are approved for the app.'), (5, 'create_organizations', 'Create organizations within the app.'), (6, 'create_groups', 'Create groups within the app.'), (7, 'admin_limits', 'Manage limits within the app.'), (8, 'admin_permissions', 'Manage permissions within the app.'), (9, 'admin_levels', 'Manage levels of the app.'), (10, 'admin_objects', 'Manage objects of the app.'), (11, 'admin_privileged_data', 'Manage privileged data within the app.');
COMMIT;

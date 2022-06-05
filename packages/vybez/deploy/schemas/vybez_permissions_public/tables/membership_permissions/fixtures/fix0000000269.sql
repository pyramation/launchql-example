-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/fixtures/fix0000000269 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;
INSERT INTO "vybez_permissions_public".membership_permissions (bitnum, name, description) VALUES (1, 'admin_members', 'Manage members of the organization.'), (2, 'create_invites', 'Create invites for the organization.'), (3, 'admin_invites', 'Manage invites of the organization.'), (4, 'invites_approved', 'Invites sent are approved for the organization.'), (5, 'create_organizations', 'Create organizations within the organization.'), (6, 'create_groups', 'Create groups within the organization.'), (7, 'admin_limits', 'Manage limits within the organization.'), (8, 'admin_permissions', 'Manage permissions within the organization.'), (9, 'admin_levels', 'Manage levels of the organization.'), (10, 'admin_objects', 'Manage objects of the organization.'), (11, 'admin_privileged_data', 'Manage privileged data within the organization.'), (12, 'admin_account', 'Manage account of the organization.'), (13, 'admin_profile', 'Manage profile of the organization.');
COMMIT;

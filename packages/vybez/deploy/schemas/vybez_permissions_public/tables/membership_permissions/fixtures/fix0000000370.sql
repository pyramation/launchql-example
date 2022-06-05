-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/fixtures/fix0000000370 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;
INSERT INTO "vybez_permissions_public".membership_permissions (bitnum, name, description) VALUES (14, 'create_publications', 'Create publications within the organization'), (15, 'approve_publications', 'Approve publications within the organization'), (16, 'admin_publications', 'Admin publications within the organization'), (17, 'verify_publications', 'Verify publications within the organization'), (18, 'create_posts', 'Create posts for the organization'), (19, 'admin_posts', 'Manage posts for the organization');
COMMIT;

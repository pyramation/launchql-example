-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/fixtures/fix0000000369 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table

BEGIN;
INSERT INTO "vybez_permissions_public".app_permissions (bitnum, name, description) VALUES (12, 'create_publications', 'Create publications within the app.'), (13, 'approve_publications', 'Approve publications within the app.'), (14, 'verify_publications', 'Verify publications within the app.'), (15, 'create_posts', 'Create posts within the app.'), (16, 'admin_posts', 'Manage posts within the app.'), (17, 'admin_interactions', 'Manage interactions within the app.');
COMMIT;

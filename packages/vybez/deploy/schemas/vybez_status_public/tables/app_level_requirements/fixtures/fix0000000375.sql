-- Deploy: schemas/vybez_status_public/tables/app_level_requirements/fixtures/fix0000000375 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table

BEGIN;
INSERT INTO "vybez_status_public".app_level_requirements (level, name, description) VALUES ('novice', 'agree_to_terms', 'Agree to the terms of service.'), ('novice', 'username', 'Create username.'), ('app_user', 'verify_account', 'Verify your account.'), ('app_user', 'upload_profile_image', 'Upload a profile image.');
COMMIT;

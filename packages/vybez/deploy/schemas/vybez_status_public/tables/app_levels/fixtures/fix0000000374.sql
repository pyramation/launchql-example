-- Deploy: schemas/vybez_status_public/tables/app_levels/fixtures/fix0000000374 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_levels/table

BEGIN;
INSERT INTO "vybez_status_public".app_levels (name, description) VALUES ('novice', 'For this achievement you need to agree to the terms of service, sign up for an account.'), ('app_user', 'For this achievement you need to verify your account and upload a profile image.');
COMMIT;

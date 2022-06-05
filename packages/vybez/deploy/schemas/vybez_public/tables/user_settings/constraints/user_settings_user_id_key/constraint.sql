-- Deploy: schemas/vybez_public/tables/user_settings/constraints/user_settings_user_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;

ALTER TABLE "vybez_public".user_settings
    ADD CONSTRAINT user_settings_user_id_key UNIQUE (user_id);
COMMIT;

-- Deploy: schemas/vybez_public/tables/user_settings/constraints/user_settings_user_id_fkey/alterations/alt0000000584 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/constraints/user_settings_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_settings_user_id_fkey ON "vybez_public".user_settings IS E'@omit manyToMany';
COMMIT;

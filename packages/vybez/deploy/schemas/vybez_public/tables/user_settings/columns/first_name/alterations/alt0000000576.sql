-- Deploy: schemas/vybez_public/tables/user_settings/columns/first_name/alterations/alt0000000576 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table
-- requires: schemas/vybez_public/tables/user_settings/columns/first_name/column

BEGIN;
ALTER TABLE "vybez_public".user_settings ADD CONSTRAINT user_settings_first_name_chk CHECK (character_length(first_name) <= 64);
COMMIT;

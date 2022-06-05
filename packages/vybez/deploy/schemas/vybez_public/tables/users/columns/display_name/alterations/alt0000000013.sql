-- Deploy: schemas/vybez_public/tables/users/columns/display_name/alterations/alt0000000013 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/display_name/column

BEGIN;
ALTER TABLE "vybez_public".users ADD CONSTRAINT users_display_name_chk CHECK (character_length(display_name) <= 256);
COMMIT;

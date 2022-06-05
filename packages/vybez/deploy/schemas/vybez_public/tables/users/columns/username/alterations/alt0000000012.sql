-- Deploy: schemas/vybez_public/tables/users/columns/username/alterations/alt0000000012 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/username/column

BEGIN;
ALTER TABLE "vybez_public".users ADD CONSTRAINT users_username_chk CHECK (character_length(username) <= 256);
COMMIT;

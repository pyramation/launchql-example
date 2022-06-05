-- Deploy: schemas/vybez_public/tables/publications/columns/slug/alterations/alt0000000596 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_public/tables/publications/columns/slug/column

BEGIN;
ALTER TABLE "vybez_public".publications ADD CONSTRAINT publications_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;

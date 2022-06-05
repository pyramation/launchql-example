-- Deploy: schemas/vybez_public/tables/interaction_types/columns/slug/alterations/alt0000000612 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table
-- requires: schemas/vybez_public/tables/interaction_types/columns/slug/column

BEGIN;
ALTER TABLE "vybez_public".interaction_types ADD CONSTRAINT interaction_types_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;

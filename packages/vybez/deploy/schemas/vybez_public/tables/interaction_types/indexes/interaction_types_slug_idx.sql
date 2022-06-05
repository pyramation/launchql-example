-- Deploy: schemas/vybez_public/tables/interaction_types/indexes/interaction_types_slug_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table
-- requires: schemas/vybez_public/tables/interaction_types/columns/slug/column

BEGIN;
CREATE INDEX interaction_types_slug_idx ON "vybez_public".interaction_types (slug);
COMMIT;

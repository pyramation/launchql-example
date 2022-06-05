-- Deploy: schemas/vybez_public/tables/interaction_types/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;

ALTER TABLE "vybez_public".interaction_types ADD COLUMN id uuid;
COMMIT;

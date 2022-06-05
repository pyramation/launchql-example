-- Deploy: schemas/vybez_public/tables/interaction_types/columns/ref_num/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;

ALTER TABLE "vybez_public".interaction_types ADD COLUMN ref_num serial;
COMMIT;

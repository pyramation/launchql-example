-- Deploy: schemas/vybez_public/tables/interactions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions
    ENABLE ROW LEVEL SECURITY;
COMMIT;

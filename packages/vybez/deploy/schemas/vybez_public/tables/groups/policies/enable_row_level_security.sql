-- Deploy: schemas/vybez_public/tables/groups/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups
    ENABLE ROW LEVEL SECURITY;
COMMIT;

-- Deploy: schemas/vybez_public/tables/users/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;

ALTER TABLE "vybez_public".users
    ENABLE ROW LEVEL SECURITY;
COMMIT;

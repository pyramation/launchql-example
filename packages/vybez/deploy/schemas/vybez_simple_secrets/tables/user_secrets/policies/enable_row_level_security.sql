-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;

ALTER TABLE "vybez_simple_secrets".user_secrets
    ENABLE ROW LEVEL SECURITY;
COMMIT;

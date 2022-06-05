-- Deploy: schemas/vybez_limits_public/tables/app_limits/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".app_limits
    ENABLE ROW LEVEL SECURITY;
COMMIT;

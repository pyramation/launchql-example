-- Deploy: schemas/vybez_limits_public/tables/membership_limits/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limits
    ENABLE ROW LEVEL SECURITY;
COMMIT;

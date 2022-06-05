-- Deploy: schemas/vybez_limits_public/tables/membership_limit_defaults/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/table

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limit_defaults
    ENABLE ROW LEVEL SECURITY;
COMMIT;

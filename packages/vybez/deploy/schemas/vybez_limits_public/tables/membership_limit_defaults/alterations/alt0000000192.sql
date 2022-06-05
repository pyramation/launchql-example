-- Deploy: schemas/vybez_limits_public/tables/membership_limit_defaults/alterations/alt0000000192 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/table

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limit_defaults
    DISABLE ROW LEVEL SECURITY;
COMMIT;

-- Deploy: schemas/vybez_limits_public/tables/membership_limits/alterations/alt0000000187 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limits
    DISABLE ROW LEVEL SECURITY;
COMMIT;

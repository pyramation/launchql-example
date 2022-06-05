-- Deploy: schemas/vybez_limits_public/tables/app_limit_defaults/alterations/alt0000000062 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limit_defaults/table

BEGIN;

ALTER TABLE "vybez_limits_public".app_limit_defaults
    DISABLE ROW LEVEL SECURITY;
COMMIT;

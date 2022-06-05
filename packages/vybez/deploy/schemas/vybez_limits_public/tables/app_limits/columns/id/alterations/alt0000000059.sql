-- Deploy: schemas/vybez_limits_public/tables/app_limits/columns/id/alterations/alt0000000059 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limits/table
-- requires: schemas/vybez_limits_public/tables/app_limits/columns/id/column

BEGIN;

ALTER TABLE "vybez_limits_public".app_limits 
    ALTER COLUMN id SET NOT NULL;
COMMIT;

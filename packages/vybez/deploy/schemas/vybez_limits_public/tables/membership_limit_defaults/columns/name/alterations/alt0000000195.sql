-- Deploy: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/name/alterations/alt0000000195 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/table
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/name/column

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limit_defaults 
    ALTER COLUMN name SET NOT NULL;
COMMIT;

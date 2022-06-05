-- Deploy: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/id/alterations/alt0000000194 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/table
-- requires: schemas/vybez_limits_public/tables/membership_limit_defaults/columns/id/column

BEGIN;

ALTER TABLE "vybez_limits_public".membership_limit_defaults 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;

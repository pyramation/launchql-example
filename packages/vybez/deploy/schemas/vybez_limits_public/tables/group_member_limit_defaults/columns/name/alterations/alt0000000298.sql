-- Deploy: schemas/vybez_limits_public/tables/group_member_limit_defaults/columns/name/alterations/alt0000000298 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limit_defaults/table
-- requires: schemas/vybez_limits_public/tables/group_member_limit_defaults/columns/name/column

BEGIN;

ALTER TABLE "vybez_limits_public".group_member_limit_defaults 
    ALTER COLUMN name SET NOT NULL;
COMMIT;

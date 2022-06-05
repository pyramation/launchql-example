-- Deploy: schemas/vybez_limits_public/tables/group_member_limit_defaults/columns/max/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/group_member_limit_defaults/table

BEGIN;

ALTER TABLE "vybez_limits_public".group_member_limit_defaults ADD COLUMN max int;
COMMIT;

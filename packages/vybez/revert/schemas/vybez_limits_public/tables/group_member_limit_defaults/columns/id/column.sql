-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limit_defaults DROP COLUMN id;
COMMIT;  


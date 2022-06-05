-- Revert: schemas/vybez_limits_public/tables/group_member_limits/columns/max/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits DROP COLUMN max;
COMMIT;  


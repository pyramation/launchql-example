-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/table from pg

BEGIN;
DROP TABLE "vybez_limits_public".group_member_limit_defaults;
COMMIT;  


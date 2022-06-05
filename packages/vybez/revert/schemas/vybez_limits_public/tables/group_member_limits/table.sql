-- Revert: schemas/vybez_limits_public/tables/group_member_limits/table from pg

BEGIN;
DROP TABLE "vybez_limits_public".group_member_limits;
COMMIT;  


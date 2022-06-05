-- Revert: schemas/vybez_limits_public/tables/group_member_limits/columns/id/alterations/alt0000000292 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


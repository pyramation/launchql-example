-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/columns/name/alterations/alt0000000298 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limit_defaults 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  


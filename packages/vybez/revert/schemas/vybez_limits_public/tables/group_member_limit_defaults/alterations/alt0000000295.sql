-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/alterations/alt0000000295 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limit_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  


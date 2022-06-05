-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_limits_public".group_member_limit_defaults FROM authenticated;
COMMIT;  


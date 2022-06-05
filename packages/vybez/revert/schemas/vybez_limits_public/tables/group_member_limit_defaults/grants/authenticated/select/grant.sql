-- Revert: schemas/vybez_limits_public/tables/group_member_limit_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_limits_public".group_member_limit_defaults FROM authenticated;
COMMIT;  


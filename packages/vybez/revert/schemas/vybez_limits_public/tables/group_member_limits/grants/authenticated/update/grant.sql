-- Revert: schemas/vybez_limits_public/tables/group_member_limits/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_limits_public".group_member_limits FROM authenticated;
COMMIT;  


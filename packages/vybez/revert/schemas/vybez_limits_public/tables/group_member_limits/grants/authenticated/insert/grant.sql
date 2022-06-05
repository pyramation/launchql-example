-- Revert: schemas/vybez_limits_public/tables/group_member_limits/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_limits_public".group_member_limits FROM authenticated;
COMMIT;  


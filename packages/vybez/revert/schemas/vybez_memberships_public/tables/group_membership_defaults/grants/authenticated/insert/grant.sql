-- Revert: schemas/vybez_memberships_public/tables/group_membership_defaults/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_memberships_public".group_membership_defaults FROM authenticated;
COMMIT;  


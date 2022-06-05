-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_memberships_public".app_membership_defaults FROM authenticated;
COMMIT;  


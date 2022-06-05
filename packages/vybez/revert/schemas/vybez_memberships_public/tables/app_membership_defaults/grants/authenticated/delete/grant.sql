-- Revert: schemas/vybez_memberships_public/tables/app_membership_defaults/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_memberships_public".app_membership_defaults FROM authenticated;
COMMIT;  


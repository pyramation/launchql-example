-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".membership_defaults FROM authenticated;
COMMIT;  


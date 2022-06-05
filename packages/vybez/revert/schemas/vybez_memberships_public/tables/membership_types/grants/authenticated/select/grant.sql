-- Revert: schemas/vybez_memberships_public/tables/membership_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".membership_types FROM authenticated;
COMMIT;  


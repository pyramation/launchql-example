-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_permissions_public".membership_permissions FROM authenticated;
COMMIT;  


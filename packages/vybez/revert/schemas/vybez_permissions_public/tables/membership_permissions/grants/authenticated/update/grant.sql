-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_permissions_public".membership_permissions FROM authenticated;
COMMIT;  


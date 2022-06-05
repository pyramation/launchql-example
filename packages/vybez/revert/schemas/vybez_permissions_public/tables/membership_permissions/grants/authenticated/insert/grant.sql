-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_permissions_public".membership_permissions FROM authenticated;
COMMIT;  


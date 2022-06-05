-- Revert: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_permissions_public".app_permissions FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_permissions_public".app_permissions FROM authenticated;
COMMIT;  


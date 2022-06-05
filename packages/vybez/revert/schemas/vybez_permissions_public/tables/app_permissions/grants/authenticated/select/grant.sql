-- Revert: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_permissions_public".app_permissions FROM authenticated;
COMMIT;  


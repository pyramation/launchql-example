-- Revert: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_permissions_public".app_permissions FROM authenticated;
COMMIT;  


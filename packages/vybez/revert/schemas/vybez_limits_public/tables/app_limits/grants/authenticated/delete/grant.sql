-- Revert: schemas/vybez_limits_public/tables/app_limits/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_limits_public".app_limits FROM authenticated;
COMMIT;  


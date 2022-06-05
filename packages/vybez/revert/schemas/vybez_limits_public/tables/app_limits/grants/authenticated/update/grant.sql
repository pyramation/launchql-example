-- Revert: schemas/vybez_limits_public/tables/app_limits/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_limits_public".app_limits FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_limits_public/tables/app_limits/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_limits_public".app_limits FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_status_public/tables/app_levels/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_status_public".app_levels FROM authenticated;
COMMIT;  


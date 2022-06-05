-- Revert: schemas/vybez_status_public/tables/app_achievements/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_status_public".app_achievements FROM authenticated;
COMMIT;  


-- Revert: schemas/vybez_status_public/tables/app_achievements/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_status_public".app_achievements FROM authenticated;
COMMIT;  


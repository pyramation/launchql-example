-- Revert: schemas/vybez_status_public/tables/app_achievements/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_status_public".app_achievements FROM authenticated;
COMMIT;  


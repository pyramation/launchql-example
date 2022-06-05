-- Revert: schemas/vybez_status_public/tables/app_steps/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_status_public".app_steps FROM authenticated;
COMMIT;  


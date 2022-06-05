-- Revert: schemas/vybez_status_public/tables/app_levels/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_status_public".app_levels FROM authenticated;
COMMIT;  


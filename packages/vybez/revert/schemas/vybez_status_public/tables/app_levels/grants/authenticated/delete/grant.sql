-- Revert: schemas/vybez_status_public/tables/app_levels/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_status_public".app_levels FROM authenticated;
COMMIT;  


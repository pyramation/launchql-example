-- Revert: schemas/vybez_status_public/tables/app_level_requirements/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_status_public".app_level_requirements FROM authenticated;
COMMIT;  


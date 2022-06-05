-- Revert: schemas/vybez_status_public/tables/app_achievements/alterations/alt0000000153 from pg

BEGIN;
COMMENT ON TABLE "vybez_status_public".app_achievements IS NULL;
COMMIT;  


-- Revert: schemas/vybez_status_public/tables/app_steps/alterations/alt0000000144 from pg

BEGIN;
COMMENT ON TABLE "vybez_status_public".app_steps IS NULL;
COMMIT;  


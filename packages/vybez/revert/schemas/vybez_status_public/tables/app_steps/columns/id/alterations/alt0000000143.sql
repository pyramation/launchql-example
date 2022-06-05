-- Revert: schemas/vybez_status_public/tables/app_steps/columns/id/alterations/alt0000000143 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_steps 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  


-- Revert: schemas/vybez_status_public/tables/app_steps/columns/count/alterations/alt0000000148 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_steps 
    ALTER COLUMN count DROP NOT NULL;


COMMIT;  


-- Revert: schemas/vybez_status_public/tables/app_level_requirements/columns/name/alterations/alt0000000168 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_level_requirements 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  


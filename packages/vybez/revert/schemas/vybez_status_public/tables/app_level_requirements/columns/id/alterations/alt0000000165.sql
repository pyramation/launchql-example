-- Revert: schemas/vybez_status_public/tables/app_level_requirements/columns/id/alterations/alt0000000165 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_level_requirements 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  


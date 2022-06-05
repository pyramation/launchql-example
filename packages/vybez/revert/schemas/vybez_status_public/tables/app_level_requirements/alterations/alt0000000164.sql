-- Revert: schemas/vybez_status_public/tables/app_level_requirements/alterations/alt0000000164 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_level_requirements
    ENABLE ROW LEVEL SECURITY;

COMMIT;  


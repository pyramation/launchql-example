-- Revert: schemas/vybez_status_public/tables/app_achievements/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_achievements
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


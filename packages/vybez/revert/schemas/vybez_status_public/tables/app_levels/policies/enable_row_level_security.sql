-- Revert: schemas/vybez_status_public/tables/app_levels/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_levels
    DISABLE ROW LEVEL SECURITY;

COMMIT;  


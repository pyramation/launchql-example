-- Verify: schemas/vybez_status_public/tables/app_level_requirements/indexes/app_level_requirements_name_level_priority_idx on pg

BEGIN;
SELECT verify_index('vybez_status_public.app_level_requirements', 'app_level_requirements_name_level_priority_idx');
COMMIT;  


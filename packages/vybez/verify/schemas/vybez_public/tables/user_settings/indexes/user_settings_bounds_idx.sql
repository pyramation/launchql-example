-- Verify: schemas/vybez_public/tables/user_settings/indexes/user_settings_bounds_idx on pg

BEGIN;
SELECT verify_index('vybez_public.user_settings', 'user_settings_bounds_idx');
COMMIT;  


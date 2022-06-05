-- Verify: schemas/vybez_public/tables/publications/triggers/update_slg_slug on pg

BEGIN;
SELECT verify_trigger('vybez_public.update_slg_slug');
COMMIT;  


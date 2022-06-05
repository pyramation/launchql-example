-- Verify: schemas/vybez_public/tables/publications/triggers/insert_slg_slug on pg

BEGIN;
SELECT verify_trigger('vybez_public.insert_slg_slug');
COMMIT;  


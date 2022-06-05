-- Verify: schemas/vybez_public/tables/interaction_types/triggers/insert_slg_slug on pg

BEGIN;
SELECT verify_trigger('vybez_public.insert_slg_slug');
COMMIT;  


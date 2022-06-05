-- Verify: schemas/vybez_private/trigger_fns/publications_slg_slug on pg

BEGIN;
SELECT verify_function('vybez_private.publications_slg_slug');
COMMIT;  


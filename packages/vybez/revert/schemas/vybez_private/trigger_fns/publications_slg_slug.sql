-- Revert: schemas/vybez_private/trigger_fns/publications_slg_slug from pg

BEGIN;
DROP FUNCTION "vybez_private".publications_slg_slug;
COMMIT;  


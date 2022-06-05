-- Revert: schemas/vybez_private/trigger_fns/interaction_types_slg_slug from pg

BEGIN;
DROP FUNCTION "vybez_private".interaction_types_slg_slug;
COMMIT;  


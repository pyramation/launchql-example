-- Verify: schemas/vybez_private/trigger_fns/interaction_types_slg_slug on pg

BEGIN;
SELECT verify_function('vybez_private.interaction_types_slg_slug');
COMMIT;  


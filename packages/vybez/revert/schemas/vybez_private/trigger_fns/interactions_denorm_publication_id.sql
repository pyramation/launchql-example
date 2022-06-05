-- Revert: schemas/vybez_private/trigger_fns/interactions_denorm_publication_id from pg

BEGIN;
DROP FUNCTION "vybez_private".interactions_denorm_publication_id;
COMMIT;  


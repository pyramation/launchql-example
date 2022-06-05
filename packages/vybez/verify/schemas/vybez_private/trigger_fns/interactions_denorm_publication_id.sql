-- Verify: schemas/vybez_private/trigger_fns/interactions_denorm_publication_id on pg

BEGIN;
SELECT verify_function('vybez_private.interactions_denorm_publication_id');
COMMIT;  


-- Verify: schemas/vybez_public/tables/interactions/triggers/_000000000_ensure_insert_publication_id on pg

BEGIN;
SELECT verify_trigger('vybez_public._000000000_ensure_insert_publication_id');
COMMIT;  


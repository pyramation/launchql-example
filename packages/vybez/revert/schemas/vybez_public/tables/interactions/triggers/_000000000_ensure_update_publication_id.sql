-- Revert: schemas/vybez_public/tables/interactions/triggers/_000000000_ensure_update_publication_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_publication_id ON "vybez_public".interactions;
COMMIT;  


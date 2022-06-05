-- Deploy: schemas/vybez_public/tables/interactions/triggers/_000000000_ensure_update_publication_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_private/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_private/trigger_fns/interactions_denorm_publication_id

BEGIN;
CREATE TRIGGER _000000000_ensure_update_publication_id 
 BEFORE UPDATE ON "vybez_public".interactions 
 FOR EACH ROW 
 WHEN (OLD.publication_id IS DISTINCT FROM NEW.publication_id OR OLD.publication_id IS DISTINCT FROM NEW.publication_id OR OLD.user_id IS DISTINCT FROM NEW.user_id) 
 EXECUTE PROCEDURE "vybez_private".interactions_denorm_publication_id ( );
COMMIT;

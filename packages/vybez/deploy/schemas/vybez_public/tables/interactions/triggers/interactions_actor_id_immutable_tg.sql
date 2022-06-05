-- Deploy: schemas/vybez_public/tables/interactions/triggers/interactions_actor_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
CREATE TRIGGER interactions_actor_id_immutable_tg 
 BEFORE UPDATE ON "vybez_public".interactions 
 FOR EACH ROW 
 WHEN (OLD.actor_id IS DISTINCT FROM NEW.actor_id AND old.actor_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'actor_id' );
COMMIT;

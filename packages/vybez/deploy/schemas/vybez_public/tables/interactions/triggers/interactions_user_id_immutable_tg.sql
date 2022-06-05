-- Deploy: schemas/vybez_public/tables/interactions/triggers/interactions_user_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;
CREATE TRIGGER interactions_user_id_immutable_tg 
 BEFORE UPDATE ON "vybez_public".interactions 
 FOR EACH ROW 
 WHEN (OLD.user_id IS DISTINCT FROM NEW.user_id AND old.user_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'user_id' );
COMMIT;

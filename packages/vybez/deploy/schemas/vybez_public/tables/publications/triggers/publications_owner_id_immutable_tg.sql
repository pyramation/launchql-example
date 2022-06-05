-- Deploy: schemas/vybez_public/tables/publications/triggers/publications_owner_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;
CREATE TRIGGER publications_owner_id_immutable_tg 
 BEFORE UPDATE ON "vybez_public".publications 
 FOR EACH ROW 
 WHEN (OLD.owner_id IS DISTINCT FROM NEW.owner_id AND old.owner_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'owner_id' );
COMMIT;

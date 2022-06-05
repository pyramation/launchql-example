-- Deploy: schemas/vybez_private/trigger_fns/interactions_denorm_publication_id to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;
CREATE FUNCTION "vybez_private".interactions_denorm_publication_id ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  IF (NEW.publication_id IS NOT NULL) THEN
   SELECT ref.id,
ref.owner_id FROM "vybez_public".publications AS ref WHERE ref.id = new.publication_id
   INTO new.publication_id,
new.user_id;
  END IF;
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;

-- Deploy: schemas/vybez_public/tables/interaction_types/triggers/interaction_types_slug_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;
CREATE TRIGGER interaction_types_slug_immutable_tg 
 BEFORE UPDATE ON "vybez_public".interaction_types 
 FOR EACH ROW 
 WHEN (OLD.slug IS DISTINCT FROM NEW.slug AND old.slug IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'slug' );
COMMIT;

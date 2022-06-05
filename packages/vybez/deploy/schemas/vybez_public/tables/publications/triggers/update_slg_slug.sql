-- Deploy: schemas/vybez_public/tables/publications/triggers/update_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_private/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_private/trigger_fns/publications_slg_slug

BEGIN;
CREATE TRIGGER update_slg_slug 
 BEFORE UPDATE ON "vybez_public".publications 
 FOR EACH ROW 
 WHEN (OLD.slug IS DISTINCT FROM NEW.slug) 
 EXECUTE PROCEDURE "vybez_private".publications_slg_slug ( );
COMMIT;

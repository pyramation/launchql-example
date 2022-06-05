-- Deploy: schemas/vybez_public/tables/publications/triggers/insert_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_private/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_private/trigger_fns/publications_slg_slug

BEGIN;
CREATE TRIGGER insert_slg_slug 
 BEFORE INSERT ON "vybez_public".publications 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_private".publications_slg_slug ( );
COMMIT;

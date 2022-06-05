-- Deploy: schemas/vybez_public/tables/interaction_types/triggers/insert_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_private/schema
-- requires: schemas/vybez_public/tables/interaction_types/table
-- requires: schemas/vybez_private/trigger_fns/interaction_types_slg_slug

BEGIN;
CREATE TRIGGER insert_slg_slug 
 BEFORE INSERT ON "vybez_public".interaction_types 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_private".interaction_types_slg_slug ( );
COMMIT;

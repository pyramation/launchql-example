-- Deploy: schemas/vybez_public/tables/publications/triggers/publications_search_tsv_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_private/schema
-- requires: schemas/vybez_public/tables/publications/table
-- requires: schemas/vybez_private/trigger_fns/publications_search_tsv

BEGIN;
CREATE TRIGGER publications_search_tsv_insert_tg 
 BEFORE INSERT ON "vybez_public".publications 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_private".publications_search_tsv ( );
COMMIT;

-- Deploy: schemas/vybez_public/tables/users/triggers/users_search_tsv_tsv_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_private/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_private/trigger_fns/users_search_tsv_tsv

BEGIN;
CREATE TRIGGER users_search_tsv_tsv_insert_tg 
 BEFORE INSERT ON "vybez_public".users 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_private".users_search_tsv_tsv ( );
COMMIT;

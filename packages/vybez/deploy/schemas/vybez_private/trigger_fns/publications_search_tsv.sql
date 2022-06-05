-- Deploy: schemas/vybez_private/trigger_fns/publications_search_tsv to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;
CREATE FUNCTION "vybez_private".publications_search_tsv ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
BEGIN
NEW.search = (setweight(to_tsvector('pg_catalog.english', COALESCE(array_to_string(NEW.tags::citext[], ' '), '')), 'B') || (setweight(to_tsvector('pg_catalog.simple', COALESCE(array_to_string(NEW.tags::citext[], ' '), '')), 'A') || (setweight(to_tsvector('pg_catalog.english', COALESCE(NEW.title, '')), 'B') || (setweight(to_tsvector('pg_catalog.simple', COALESCE(NEW.title, '')), 'A') || setweight(to_tsvector('pg_catalog.english', COALESCE(NEW.description, '')), 'C')))));
RETURN NEW;
END; 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;

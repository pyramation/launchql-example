-- Deploy: schemas/vybez_public/alterations/alt0000000001 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_public" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_public" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_public" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_public" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;

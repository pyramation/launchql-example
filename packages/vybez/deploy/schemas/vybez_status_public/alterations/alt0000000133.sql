-- Deploy: schemas/vybez_status_public/alterations/alt0000000133 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_status_public" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_status_public" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_status_public" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_status_public" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;

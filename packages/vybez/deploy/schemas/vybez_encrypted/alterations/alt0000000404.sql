-- Deploy: schemas/vybez_encrypted/alterations/alt0000000404 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_encrypted" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_encrypted" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_encrypted" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_encrypted" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;

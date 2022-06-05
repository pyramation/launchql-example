-- Deploy: schemas/vybez_public/alterations/alt0000000004 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

-- Deploy: schemas/vybez_status_public/alterations/alt0000000136 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_status_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_status_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

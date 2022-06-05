-- Deploy: schemas/vybez_encrypted/alterations/alt0000000407 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_encrypted" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_encrypted" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

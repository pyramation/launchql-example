-- Deploy: schemas/vybez_private/alterations/alt0000000008 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

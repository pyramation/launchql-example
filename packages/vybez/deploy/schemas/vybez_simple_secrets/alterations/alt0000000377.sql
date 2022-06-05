-- Deploy: schemas/vybez_simple_secrets/alterations/alt0000000377 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_simple_secrets" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_simple_secrets" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

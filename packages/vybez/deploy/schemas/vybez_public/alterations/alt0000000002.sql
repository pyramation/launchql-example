-- Deploy: schemas/vybez_public/alterations/alt0000000002 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_public" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_public" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

-- Deploy: schemas/vybez_private/alterations/alt0000000006 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

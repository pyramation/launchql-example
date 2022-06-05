-- Deploy: schemas/vybez_status_private/alterations/alt0000000138 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_status_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_status_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

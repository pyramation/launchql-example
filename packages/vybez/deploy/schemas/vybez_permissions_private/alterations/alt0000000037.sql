-- Deploy: schemas/vybez_permissions_private/alterations/alt0000000037 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_permissions_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_permissions_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

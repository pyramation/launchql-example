-- Deploy: schemas/vybez_invites_private/alterations/alt0000000469 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_invites_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

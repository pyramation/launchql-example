-- Deploy: schemas/vybez_invites_public/alterations/alt0000000465 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_invites_public" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_public" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

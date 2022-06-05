-- Deploy: schemas/vybez_invites_private/alterations/alt0000000467 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_invites_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

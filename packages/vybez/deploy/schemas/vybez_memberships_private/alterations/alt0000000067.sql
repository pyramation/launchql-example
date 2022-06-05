-- Deploy: schemas/vybez_memberships_private/alterations/alt0000000067 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_memberships_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_memberships_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

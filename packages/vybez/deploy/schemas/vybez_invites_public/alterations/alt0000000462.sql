-- Deploy: schemas/vybez_invites_public/alterations/alt0000000462 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_invites_public" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_public" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_public" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_public" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;

-- Deploy: schemas/vybez_roles_private/alterations/alt0000000388 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_roles_private" TO anonymous;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_roles_private" GRANT ALL ON FUNCTIONS TO anonymous;
COMMIT;

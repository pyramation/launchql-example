-- Deploy: schemas/vybez_roles_public/alterations/alt0000000414 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_roles_public" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_roles_public" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

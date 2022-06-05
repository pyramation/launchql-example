-- Deploy: schemas/vybez_limits_public/alterations/alt0000000051 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_limits_public" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_limits_public" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

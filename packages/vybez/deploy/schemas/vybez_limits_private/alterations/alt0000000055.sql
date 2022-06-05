-- Deploy: schemas/vybez_limits_private/alterations/alt0000000055 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_private/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_limits_private" TO authenticated;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_limits_private" GRANT ALL ON FUNCTIONS TO authenticated;
COMMIT;

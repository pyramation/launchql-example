-- Deploy: schemas/vybez_limits_private/alterations/alt0000000056 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_limits_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

-- Deploy: schemas/vybez_limits_public/alterations/alt0000000052 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_limits_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

-- Deploy: schemas/vybez_private/alterations/alt0000000007 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

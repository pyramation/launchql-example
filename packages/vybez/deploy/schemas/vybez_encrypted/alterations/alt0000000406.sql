-- Deploy: schemas/vybez_encrypted/alterations/alt0000000406 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_encrypted/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_encrypted"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

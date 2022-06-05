-- Deploy: schemas/vybez_status_private/alterations/alt0000000139 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_status_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

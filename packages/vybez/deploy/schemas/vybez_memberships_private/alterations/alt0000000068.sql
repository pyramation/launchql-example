-- Deploy: schemas/vybez_memberships_private/alterations/alt0000000068 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_memberships_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

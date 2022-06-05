-- Deploy: schemas/vybez_invites_private/alterations/alt0000000468 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

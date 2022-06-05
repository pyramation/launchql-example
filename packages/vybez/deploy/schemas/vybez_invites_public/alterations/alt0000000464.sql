-- Deploy: schemas/vybez_invites_public/alterations/alt0000000464 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_invites_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

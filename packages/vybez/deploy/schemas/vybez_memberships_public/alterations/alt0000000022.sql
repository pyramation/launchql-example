-- Deploy: schemas/vybez_memberships_public/alterations/alt0000000022 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_memberships_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

-- Deploy: schemas/vybez_permissions_public/alterations/alt0000000032 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_permissions_public"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

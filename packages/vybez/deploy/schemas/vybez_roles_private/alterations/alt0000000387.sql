-- Deploy: schemas/vybez_roles_private/alterations/alt0000000387 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema

BEGIN;

ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_roles_private"
    GRANT USAGE, SELECT ON SEQUENCES TO authenticated;
COMMIT;

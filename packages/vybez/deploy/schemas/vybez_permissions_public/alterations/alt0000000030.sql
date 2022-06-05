-- Deploy: schemas/vybez_permissions_public/alterations/alt0000000030 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema

BEGIN;

GRANT USAGE ON SCHEMA "vybez_permissions_public" TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_permissions_public" GRANT ALL ON TABLES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_permissions_public" GRANT ALL ON SEQUENCES TO administrator;
ALTER DEFAULT PRIVILEGES IN SCHEMA "vybez_permissions_public" GRANT ALL ON FUNCTIONS TO administrator;
COMMIT;

-- Deploy: schemas/vybez_public/tables/user_settings/alterations/alt0000000571 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;

ALTER TABLE "vybez_public".user_settings
    DISABLE ROW LEVEL SECURITY;
COMMIT;

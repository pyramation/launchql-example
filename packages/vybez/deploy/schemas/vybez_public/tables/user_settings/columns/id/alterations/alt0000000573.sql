-- Deploy: schemas/vybez_public/tables/user_settings/columns/id/alterations/alt0000000573 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table
-- requires: schemas/vybez_public/tables/user_settings/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".user_settings 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;

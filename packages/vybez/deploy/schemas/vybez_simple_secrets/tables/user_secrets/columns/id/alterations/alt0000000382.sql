-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/columns/id/alterations/alt0000000382 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/columns/id/column

BEGIN;

ALTER TABLE "vybez_simple_secrets".user_secrets 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
